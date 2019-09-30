const BASE_URL = "http://localhost:3000"
const TRAINERS_URL = `${BASE_URL}/trainers`
const POKEMONS_URL = `${BASE_URL}/pokemons`

document.addEventListener("DOMContentLoaded", main)

function main() {
    getTrainers();
}

getTrainers = () => {
    fetch(TRAINERS_URL)
        .then(response => response.json())
        .then(data => renderTrainers(data))
}

renderTrainers = (trainers) => {
    for (let i = 0; i < trainers.length; i++) {
        renderTrainer(trainers[i])
    }
}

renderTrainer = (trainer) => {

    // console.log("this is the trainer object", trainer)
    // console.log("this is the trainer's pokemon", trainer.pokemons)

    const pokemonContainer = document.querySelector('main')
    const card = document.createElement('div')
    card.className = "card"
    card.id = `trainer-${trainer.id}`
    pokemonContainer.appendChild(card)

    const p = document.createElement('p')
    p.textContent = trainer.name
    card.appendChild(p)

    const addPokemonButton = document.createElement('button')
    addPokemonButton.addEventListener('click', () => addPokemon(trainer.id, card))
    addPokemonButton.id = `pokemon-${trainer.id}`
    addPokemonButton.textContent = "Add Pokemon"
    card.appendChild(addPokemonButton)

    // const list = document.createElement('ul')
    // card.appendChild(list)

    renderPokemons(trainer.pokemons, trainer.id)
    
}

renderPokemons = (pokemons, trainerId) => {
    const list = document.createElement('ul')
    const card = document.getElementById(`trainer-${trainerId}`)
    card.appendChild(list)
    pokemons.forEach(pokemon => {
        // console.log(pokemon)
        renderPokemon(pokemon, card)
    })
}

renderPokemon = (pokemon, card) => {
    const li = document.createElement('li')
    const releaseButton = document.createElement('button')
    releaseButton.className = "release"
    releaseButton.id = pokemon.id
    releaseButton.textContent = "Release"
    releaseButton.addEventListener('click', () => releasePokemon(pokemon.id))
    li.textContent = `${pokemon.nickname} (${pokemon.species})`
    li.appendChild(releaseButton)
    card.appendChild(li)
}

addPokemon = (trainerId, card) => {
    // console.log("i'm inside add pokemon")
    // console.log(trainerId)
    fetch(POKEMONS_URL, {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
            Accept: "application/json"
        },
        body: JSON.stringify({
            nickname: " ",
            species: " ",
            trainer_id: trainerId
        })
    })
    .then(response => response.json())
    .then( pokemon => {
        if (pokemon.errors) {
            window.alert(pokemon.errors["alert"])
        } else {
            renderPokemon(pokemon,card)
        }
    })
}

releasePokemon = (pokemonId) => {
    // console.log("I'm inside release pokemon")
    // console.log(pokemonId)
    const pokeURl = `${POKEMONS_URL}/${pokemonId}`
    fetch(pokeURl, {
        method: "DELETE",
        headers: {
            "Content-Type": "application/json",
            Accept: "application/json"
        },
        body: JSON.stringify({
            id: pokemonId
        })
    })
    // .then(console.log)
    // .then(data => console.log(data))
    .then(() => removePokemon(pokemonId))
}

removePokemon = (pokemonId) => {
    target = document.getElementById(`${pokemonId}`)
    target.parentElement.remove()
    // console.log(target)
}