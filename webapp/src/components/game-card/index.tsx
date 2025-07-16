import type { SetupContext } from 'vue'
import img from '../../pages/dashboard/assets/images/5.png'
import MdiHeart from '~icons/mdi/heart'
import MdiLightHeart from '~icons/mdi-light/heart'
import './style.scss'

export default function GameCard(props: { poster: string; name: string; platformName: string; isFav?: boolean; count?: number }, ctx: SetupContext) {
    return (
        <div class="game">
            <figure class="game__bio">
                <img src={img} class="game__thumb" />
                <figcaption class="game__name">{'MMR2DMMR2DMMR2DMMR2D'}</figcaption>
                <span class="game__tag">{'JILI'}</span>
            </figure>
            <div class="game__stat">
                <p class="game__likes">{'4.11'}K likes</p>
                <button class="game__fav">{props.isFav ? <MdiHeart /> : <MdiLightHeart />}</button>
            </div>
        </div>
    )
}
