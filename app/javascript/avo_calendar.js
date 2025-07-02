import { Calendar } from "@fullcalendar/core"
import dayGridPlugin from "@fullcalendar/daygrid"

document.addEventListener("DOMContentLoaded", function () {
    const calendarEl = document.getElementById("calendar")
    const selectEl = document.getElementById("calendar-type")

    if (!calendarEl || !selectEl) return

    let calendar = new Calendar(calendarEl, {
        plugins: [dayGridPlugin],
        initialView: "dayGridMonth",
        events: fetchEvents(selectEl.value),
    })

    calendar.render()

    selectEl.addEventListener("change", () => {
        const selectedType = selectEl.value

        calendar.removeAllEventSources()
        calendar.addEventSource(fetchEvents(selectedType))
    })

    function fetchEvents(type) {
        const url = `/avo/calendar/events${type && type !== "all" ? `?type=${type}` : ""}`

        return function (info, successCallback, failureCallback) {
            fetch(url)
                .then(response => response.json())
                .then(data => successCallback(data))
                .catch(error => {
                    console.error("Error fetching events:", error)
                    failureCallback(error)
                })
        }
    }
})
