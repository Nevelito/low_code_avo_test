import { Calendar } from "@fullcalendar/core"
import dayGridPlugin from "@fullcalendar/daygrid"

document.addEventListener("DOMContentLoaded", function () {
    const calendarEl = document.getElementById("calendar")
    if (!calendarEl) return

    const calendar = new Calendar(calendarEl, {
        plugins: [dayGridPlugin],
        initialView: "dayGridMonth",
        events: "/avo/calendar/events?type=orders" // Comment this out

        // Add some test events
        // events: [
        //     {
        //         title: 'Test Event 1',
        //         start: '2025-06-15', // Make sure this date is in your current view
        //         url: '#'
        //     },
        //     {
        //         title: 'Test Event 2',
        //         start: '2025-06-20',
        //         url: '#'
        //     }
        // ]
    })

    calendar.render()
})
