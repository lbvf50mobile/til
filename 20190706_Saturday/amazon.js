const board_table_id = 'board'


const board_array = () => [...Array(8).keys()].reverse()
.map(row => [...Array(8).keys()].map( column => [column,row]) );

const append_board_table = () =>{
    let arr = board_array();
    arr.forEach(row =>{
        let html_row = $('<tr></tr>');
        row.forEach(cell =>{
            let html_cell = $(`<td>${cell[0]};${cell[1]}</td>`);
            html_row.append(html_cell);
        });
        $(`#${board_table_id}`).append(html_row);
    });
};

$(function(){
    $('body').append("This is a script line")
    append_board_table();
});