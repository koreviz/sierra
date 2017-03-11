const root = document.body.appendChild(document.createElement('div'))
const html = require('yo-yo')
const state = { n: 0 }

const update = () => {
  const onclick = () => {
    state.n++
    update()
  }
  html.update(root, html`<div>
    <h1>clicked ${state.n} times</h1>
    <button onclick=${onclick}>click</button>
  </div>`)
}

update()
