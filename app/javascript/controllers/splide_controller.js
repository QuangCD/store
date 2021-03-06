import { Controller } from "stimulus"
import Splide from '@splidejs/splide'

export default class extends Controller {
    static targets = ['container']

    connect() {
        this.initSplide()
    }

    initSplide() {
        let id = this.containerTarget.getAttribute('id')
        let selector = `#${id}`
        let splide = new Splide(selector, {
            type: 'lood',
            autoplay: true,
            cover: true,
            lazyLoad: 'nearby'
        })
        if (splide) {
            splide.mount()
        }
    }
}