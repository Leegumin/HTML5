app.component('review-list', {
  props   : {
    rev: {
      type    : Array,
      required: true,
    },
  },
  template:
    `
    <div class = "review-container">
        <h3>Reviews:</h3>
        <ul>
            <li v-for="(review, index) in rev" :key = "index">
            {{ review.name }} gave this {{ review.rating }} stars
            <br>
            "{{ review.review }}"
            </li>
        </ul>
    </div>
    `,
})