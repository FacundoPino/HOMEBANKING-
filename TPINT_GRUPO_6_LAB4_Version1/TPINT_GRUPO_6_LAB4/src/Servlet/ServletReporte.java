package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import daoImp.Conexion;

@WebServlet("/ServletReporte")
public class ServletReporte extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fechaInicio = request.getParameter("fechaInicio");
        String fechaFin = request.getParameter("fechaFin");

        response.setContentType("text/html;charset=ISO-8859-1");
        PrintWriter out = response.getWriter();

        // Verificar que los parámetros de fecha no sean nulos
        if (fechaInicio == null || fechaFin == null || fechaInicio.isEmpty() || fechaFin.isEmpty()) {
            out.println("<p>Error: Las fechas de inicio y fin son requeridas.</p>");
            return;
        }

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            conn = Conexion.getConexion().getSQLConexion();
            if (conn == null) {
                out.println("<p>Error: No se pudo establecer la conexión con la base de datos.</p>");
                return;
            }

            String sql = "SELECT TipoMovimiento, SUM(Importe) AS total " +
                         "FROM tipomovimiento " +
                         "WHERE FechaMovimiento BETWEEN ? AND ? " +
                         "GROUP BY TipoMovimiento";

            stmt = conn.prepareStatement(sql);
            stmt.setString(1, fechaInicio);
            stmt.setString(2, fechaFin);

            rs = stmt.executeQuery();

            out.println("<h2>Reporte de Ingresos y Egresos de dinero</h2>");
            out.println("<table border='1'><tr><th>Tipo de Movimiento</th><th>Total</th></tr>");

            while (rs.next()) {
                String tipoMovimiento = rs.getString("TipoMovimiento");
                double total = rs.getDouble("total");

                out.println("<tr>"
                		+ "<td>" + tipoMovimiento + "</td>"
                		+ "<td>$ " + total + "</td>"
                		+ "</tr>");
            }

            out.println("</table>");
        } catch (SQLException e) {
            e.printStackTrace();
            out.println("<p>Error al generar el reporte: " + e.getMessage() + "</p>");
        } finally {
            // Cerrar ResultSet, PreparedStatement y Connection
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                // No cerrar la conexión aquí si estás usando un singleton
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
