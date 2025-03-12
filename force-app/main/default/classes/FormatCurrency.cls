public with sharing class FormatCurrency {
    public static String formatCurrencyDecimal(Decimal amount) {
        // Write your code here
        if(amount == null){
            return null;
        }
        Decimal amount1 = Math.abs(amount.setScale(2));
        String formattedAmount = '$'+amount1.format();
        if(amount < 0){
            formattedAmount = '-$'+amount1.format();
        }
        
        if(formattedAmount.subStringAfter('.').length() == 1){
            formattedAmount += '0';
        }
        if(!formattedAmount.contains('.')){
            formattedAmount += '.00';
        }
        System.debug('Debug: Formatting amount: ' + amount);
        return formattedAmount; // Replace with your solution
    }
}