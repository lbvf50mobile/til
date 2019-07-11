const board_table_id = 'board'


const board_array = () => [...Array(8).keys()].reverse()
.map(row => [...Array(8).keys()].map( column => [column,row]) );
const crd2str = a => `${String.fromCharCode(a[0]+'a'.charCodeAt(0))}${a[1]+1}`;
const str2crd = a => [a[0].charCodeAt(0)-'a'.charCodeAt(0),parseInt(a[1])-1];
const color = a => 0 == (a[0]+a[1])%2 ? 'black' : 'white';

const append_board_table = () =>{
    let arr = board_array();
    arr.forEach(row =>{
        let html_row = $('<tr></tr>');
        row.forEach(cell =>{
            let html_cell = $(`<td class="cell ${color(cell)}" ></td>`);
            html_row.append(html_cell);
        });
        $(`#${board_table_id}`).append(html_row);
    });
};

$(function(){
    $('body').append("This is a script line")
    append_board_table();
});