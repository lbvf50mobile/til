const board_table_id = 'board'


const board_array = () => {
    let array = [...Array(8).keys()].reverse()
    .map(row => [...Array(8).keys()].map( column => new Object({type: 'cell', data:[column,row], id:crd2str([column,row])})) );
    let chars = [...Array(8).keys()].map( x => new Object({type: 'xaxis', data: String.fromCharCode(x + 'a'.charCodeAt(0))}));
    array = array.concat([chars]).map( (x,i) =>{
        x.unshift(new Object({type: 'yaxis', data: 0 == 8-i ? '': 8-i}));
        return x
    } );
    return array;
}

const crd2str = a => `${String.fromCharCode(a[0]+'a'.charCodeAt(0))}${a[1]+1}`;
const str2crd = a => [a[0].charCodeAt(0)-'a'.charCodeAt(0),parseInt(a[1])-1];
const color = a => 0 == (a[0]+a[1])%2 ? 'black' : 'white';

const append_board_table = () =>{
    let arr = board_array();
    arr.forEach(row =>{
        let html_row = $('<tr></tr>');
        row.forEach(cell =>{
            let html_cell
            if('cell' == cell.type){
                html_cell = $(`<td id="${cell.id}" class="${cell.type} ${color(cell.data)}" ></td>`);
            }else{
                html_cell = $(`<td class="${cell.type} ${cell.data}" >${cell.data}</td>`);
            }
            html_row.append(html_cell);
        });
        $(`#${board_table_id}`).append(html_row);
    });
};

$(function(){
    $('body').append("This is a script line")
    append_board_table();
    $('.cell').on('mouseover',function(){
        
        
        let id = $(this).attr('id')
        $(`.xaxis.${id[0]}`).addClass('axis-selected')
        $(this).addClass('cell-selected')
    })
    $('.cell').on('mouseout',function(){
        $(`.xaxis`).removeClass('axis-selected')
        $('.cell').removeClass('cell-selected');
    })
});