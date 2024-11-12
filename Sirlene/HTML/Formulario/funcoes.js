/**
 * Cálculo de valor dos consoles
 * @author Erica Viana
 */

function calc_total(){
    let qtde = parseInt(document.getElementById('cqtde').value)
    total = qtde * 3800
    document.getElementById('ctot').value = total
}
