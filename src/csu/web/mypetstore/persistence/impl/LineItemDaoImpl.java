package csu.web.mypetstore.persistence.impl;

import csu.web.mypetstore.domain.LineItem;
import csu.web.mypetstore.persistence.DBUtil;
import csu.web.mypetstore.persistence.LineItemDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class LineItemDaoImpl implements LineItemDao {
    private static final String getLineItemsByOrderIdString = "SELECT ORDERID, " +
            "LINENUM AS lineNumber, ITEMID, QUANTITY, UNITPRICE FROM LINEITEM" +
            " WHERE ORDERID = ?";
    private static final String insertLineItemString = " INSERT INTO LINEITEM " +
            "(ORDERID, LINENUM, ITEMID, QUANTITY, UNITPRICE) VALUES (?, ?, ?, ?, )";


    @Override
    public List<LineItem> getLineItemsByOrderId(int orderId) {
        List<LineItem> lineItemList = new ArrayList<LineItem>();
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(getLineItemsByOrderIdString);
            preparedStatement.setInt(1, orderId);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                LineItem lineItem = new LineItem();

                lineItem.setOrderId(resultSet.getInt(1));
                lineItem.setLineNumber(resultSet.getInt(2));
                lineItem.setItemId(resultSet.getString(3));
                lineItem.setQuantity(resultSet.getInt(4));
                lineItem.setUnitPrice(resultSet.getBigDecimal(5));

                lineItemList.add(lineItem);
            }
            DBUtil.closeResultSet(resultSet);
            DBUtil.closePreparedStatement(preparedStatement);
            DBUtil.closeConnection(connection);
        }catch (Exception e){
            e.printStackTrace();
        }
        return lineItemList;
    }

    @Override
    public void insertLineItem(LineItem lineItem) {
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(insertLineItemString);
            preparedStatement.setInt(1, lineItem.getOrderId());
            preparedStatement.setInt(2, lineItem.getLineNumber());
            preparedStatement.setString(3, lineItem.getItemId());
            preparedStatement.setInt(4, lineItem.getQuantity());
            preparedStatement.setBigDecimal(5, lineItem.getUnitPrice());

            preparedStatement.executeUpdate();
            DBUtil.closePreparedStatement(preparedStatement);
            DBUtil.closeConnection(connection);
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
