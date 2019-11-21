class FormatData {
    static CurrencyFormat(data) {
        data = data.toLocaleString('it-IT', { style: 'currency', currency: 'VND' });
        return data;
    }
}