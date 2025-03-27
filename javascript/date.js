function formatDate(date) {
       var d = new Date(date),
        month = '' + (d.getMonth() + 1),
        day = '' + d.getDate(),
        year = d.getFullYear(),
        hour = '' +  d.getHours(),
        minute = '' +  d.getMinutes(),
        second = '' +  d.getSeconds(),
        millisecond = '' + d.getMilliseconds();

    if (month.length < 2) 
        month = '0' + month;

    if (day.length < 2) 
        day = '0' + day;

    if (hour.length < 2) 
        hour = '0' + hour;

    return [year, month, day].join('-') + " " + [hour, minute, second, millisecond].join('-');
}

formatDate(new Date())