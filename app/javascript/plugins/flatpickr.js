import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".datepicker", { 
      minuteIncrement: 30,
      enableTime: true,
      time_24hr: true,
      dateFormat: "Y-m-d H:i",
      altInput: true,
      altFormat: "F j, Y – h:i K",
      minDate: "today",
  });
}

export { initFlatpickr };
