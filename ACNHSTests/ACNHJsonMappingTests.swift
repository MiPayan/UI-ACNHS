//
//  ACNHJsonMappingTests.swift
//  ACNHSTests
//
//  Created by Mickael PAYAN on 14/06/2022.
//

import XCTest
@testable import ACNHS

final class ACNHJsonMappingTests: XCTestCase {
    
    func testFishJsonMapping() throws {
        guard let id = fishes.first?.id,
              let filename = fishes.first?.fileName,
              let nameUSen = fishes.first?.name.nameUSen,
              let nameEUen = fishes.first?.name.nameEUen,
              let nameEUde = fishes.first?.name.nameEUde,
              let nameEUes = fishes.first?.name.nameEUes,
              let nameUSes = fishes.first?.name.nameUSes,
              let nameEUfr = fishes.first?.name.nameEUfr,
              let nameUSfr = fishes.first?.name.nameUSfr,
              let nameEUit = fishes.first?.name.nameEUit,
              let nameEUnl = fishes.first?.name.nameEUnl,
              let nameCNzh = fishes.first?.name.nameCNzh,
              let nameTWzh = fishes.first?.name.nameTWzh,
              let nameJPja = fishes.first?.name.nameJPja,
              let nameKRko = fishes.first?.name.nameKRko,
              let nameEUru = fishes.first?.name.nameEUru,
              let monthNorthern = fishes.first?.availability.monthNorthern,
              let monthSouthern = fishes.first?.availability.monthSouthern,
              let time = fishes.first?.availability.time,
              let isAllDay = fishes.first?.availability.isAllDay,
              let isAllYear = fishes.first?.availability.isAllYear,
              let location = fishes.first?.availability.location,
              let rarity = fishes.first?.availability.rarity,
              let monthArrayNorthern = fishes.first?.availability.monthArrayNorthern,
              let monthArraySouthern = fishes.first?.availability.monthArraySouthern,
              let timeArray = fishes.first?.availability.timeArray,
              let shadow = fishes.first?.shadow,
              let price = fishes.first?.price,
              let priceCj = fishes.first?.priceCj,
              let catchPhrase = fishes.first?.catchPhrase,
              let museumPhrase = fishes.first?.museumPhrase,
              let imageURI = fishes.first?.imageURI,
              let iconURI = fishes.first?.iconURI else {
            return
        }
        XCTAssertEqual(id, 1)
        XCTAssertEqual(filename, "bitterling")
        XCTAssertEqual(nameUSen, "bitterling")
        XCTAssertEqual(nameEUen, "bitterling")
        XCTAssertEqual(nameEUde, "Bitterling")
        XCTAssertEqual(nameEUes, "amarguillo")
        XCTAssertEqual(nameUSes, "amarguillo")
        XCTAssertEqual(nameEUfr, "bouvière")
        XCTAssertEqual(nameUSfr, "bouvière")
        XCTAssertEqual(nameEUit, "rodeo")
        XCTAssertEqual(nameEUnl, "bittervoorn")
        XCTAssertEqual(nameCNzh, "红目鲫")
        XCTAssertEqual(nameTWzh, "紅目鯽")
        XCTAssertEqual(nameJPja, "タナゴ")
        XCTAssertEqual(nameKRko, "납줄개")
        XCTAssertEqual(nameEUru, "горчак")
        XCTAssertEqual(monthNorthern, "11-3")
        XCTAssertEqual(monthSouthern, "5-9")
        XCTAssertEqual(time, "")
        XCTAssertEqual(isAllDay, true)
        XCTAssertEqual(isAllYear, false)
        XCTAssertEqual(location, "River")
        XCTAssertEqual(rarity, "Common")
        XCTAssertEqual(monthArrayNorthern, [
            11,
            12,
            1,
            2,
            3
        ])
        XCTAssertEqual(monthArraySouthern, [
            5,
            6,
            7,
            8,
            9
        ])
        XCTAssertEqual(timeArray, [
            0,
            1,
            2,
            3,
            4,
            5,
            6,
            7,
            8,
            9,
            10,
            11,
            12,
            13,
            14,
            15,
            16,
            17,
            18,
            19,
            20,
            21,
            22,
            23
        ])
        XCTAssertEqual(shadow, "Smallest (1)")
        XCTAssertEqual(price, 900)
        XCTAssertEqual(priceCj, 1350)
        XCTAssertEqual(catchPhrase, "I caught a bitterling! It's mad at me, but only a little.")
        XCTAssertEqual(museumPhrase, "Bitterlings hide their eggs inside large bivalves—like clams—where the young can stay safe until grown. The bitterling isn't being sneaky. No, their young help keep the bivalve healthy by eating invading parasites! It's a wonderful bit of evolutionary deal making, don't you think? Each one keeping the other safe... Though eating parasites does not sound like a happy childhood... Is that why the fish is so bitter?")
        XCTAssertEqual(imageURI, "https://acnhapi.com/v1/images/fish/1")
        XCTAssertEqual(iconURI, "https://acnhapi.com/v1/icons/fish/1")
    }
    
    func testSeaCreatureJsonMapping() throws {
        guard let id = seaCreatures.first?.id,
              let filename = seaCreatures.first?.fileName,
              let nameUSen = seaCreatures.first?.name.nameUSen,
              let nameEUen = seaCreatures.first?.name.nameEUen,
              let nameEUde = seaCreatures.first?.name.nameEUde,
              let nameEUes = seaCreatures.first?.name.nameEUes,
              let nameUSes = seaCreatures.first?.name.nameUSes,
              let nameEUfr = seaCreatures.first?.name.nameEUfr,
              let nameUSfr = seaCreatures.first?.name.nameUSfr,
              let nameEUit = seaCreatures.first?.name.nameEUit,
              let nameEUnl = seaCreatures.first?.name.nameEUnl,
              let nameCNzh = seaCreatures.first?.name.nameCNzh,
              let nameTWzh = seaCreatures.first?.name.nameTWzh,
              let nameJPja = seaCreatures.first?.name.nameJPja,
              let nameKRko = seaCreatures.first?.name.nameKRko,
              let nameEUru = seaCreatures.first?.name.nameEUru,
              let monthNorthern = seaCreatures.first?.availability.monthNorthern,
              let monthSouthern = seaCreatures.first?.availability.monthSouthern,
              let time = seaCreatures.first?.availability.time,
              let isAllDay = seaCreatures.first?.availability.isAllDay,
              let isAllYear = seaCreatures.first?.availability.isAllYear,
              let monthArrayNorthern = seaCreatures.first?.availability.monthArrayNorthern,
              let monthArraySouthern = seaCreatures.first?.availability.monthArraySouthern,
              let timeArray = seaCreatures.first?.availability.timeArray,
              let speed = seaCreatures.first?.speed,
              let shadow = seaCreatures.first?.shadow,
              let price = seaCreatures.first?.price,
              let catchPhrase = seaCreatures.first?.catchPhrase,
              let museumPhrase = seaCreatures.first?.museumPhrase,
              let imageURI = seaCreatures.first?.imageURI,
              let iconURI = seaCreatures.first?.iconURI else {
            return
        }
        XCTAssertEqual(id, 1)
        XCTAssertEqual(filename, "seaweed")
        XCTAssertEqual(nameUSen, "seaweed")
        XCTAssertEqual(nameEUen, "seaweed")
        XCTAssertEqual(nameEUnl, "zeewier")
        XCTAssertEqual(nameEUde, "Wakame-Alge")
        XCTAssertEqual(nameEUes, "alga wakame")
        XCTAssertEqual(nameUSes, "alga wakame")
        XCTAssertEqual(nameEUfr, "wakame")
        XCTAssertEqual(nameUSfr, "wakamé")
        XCTAssertEqual(nameEUit, "alga wakame")
        XCTAssertEqual(nameCNzh, "裙带菜")
        XCTAssertEqual(nameTWzh, "裙帶菜")
        XCTAssertEqual(nameJPja, "ワカメ")
        XCTAssertEqual(nameKRko, "미역")
        XCTAssertEqual(nameEUru, "морские водоросли")
        XCTAssertEqual(monthNorthern, "10-7")
        XCTAssertEqual(monthSouthern, "4-1")
        XCTAssertEqual(time, "")
        XCTAssertEqual(isAllDay, true)
        XCTAssertEqual(isAllYear, false)
        XCTAssertEqual(monthArrayNorthern, [
            10,
            11,
            12,
            1,
            2,
            3,
            4,
            5,
            6,
            7
         ])
        XCTAssertEqual(monthArraySouthern, [
            4,
            5,
            6,
            7,
            8,
            9,
            10,
            11,
            12,
            1
         ])
        XCTAssertEqual(timeArray, [
            0,
            1,
            2,
            3,
            4,
            5,
            6,
            7,
            8,
            9,
            10,
            11,
            12,
            13,
            14,
            15,
            16,
            17,
            18,
            19,
            20,
            21,
            22,
            23
         ])
        XCTAssertEqual(speed, "Stationary")
        XCTAssertEqual(shadow, "Large")
        XCTAssertEqual(price, 600)
        XCTAssertEqual(catchPhrase, "I got some seaweed! I couldn't kelp myself.")
        XCTAssertEqual(imageURI, "https://acnhapi.com/v1/images/sea/1")
        XCTAssertEqual(iconURI, "https://acnhapi.com/v1/icons/sea/1")
        XCTAssertEqual(museumPhrase, "Let it be known that seaweed is a misnomer of the highest order! That is, it is not a noxious weed so much as it is a marine algae most beneficial to life on land and sea. Seaweed, you see, provides essential habitat and food for all manner of marine creatures. And it creates a great deal of the oxygen we land lovers love to breath too, hoo! And yet, I can't help but shudder when the slimy stuff touches my toes during a swim. Hoot! The horror!")
    }
    
    func testBugJsonMapping() throws {
        guard let id = bugs.first?.id,
              let filename = bugs.first?.fileName,
              let nameUSen = bugs.first?.name.nameUSen,
              let nameEUen = bugs.first?.name.nameEUen,
              let nameEUde = bugs.first?.name.nameEUde,
              let nameEUes = bugs.first?.name.nameEUes,
              let nameUSes = bugs.first?.name.nameUSes,
              let nameEUfr = bugs.first?.name.nameEUfr,
              let nameUSfr = bugs.first?.name.nameUSfr,
              let nameEUit = bugs.first?.name.nameEUit,
              let nameEUnl = bugs.first?.name.nameEUnl,
              let nameCNzh = bugs.first?.name.nameCNzh,
              let nameTWzh = bugs.first?.name.nameTWzh,
              let nameJPja = bugs.first?.name.nameJPja,
              let nameKRko = bugs.first?.name.nameKRko,
              let nameEUru = bugs.first?.name.nameEUru,
              let monthNorthern = bugs.first?.availability.monthNorthern,
              let monthSouthern = bugs.first?.availability.monthSouthern,
              let time = bugs.first?.availability.time,
              let isAllDay = bugs.first?.availability.isAllDay,
              let isAllYear = bugs.first?.availability.isAllYear,
              let location = bugs.first?.availability.location,
              let rarity = bugs.first?.availability.rarity,
              let monthArrayNorthern = bugs.first?.availability.monthArrayNorthern,
              let monthArraySouthern = bugs.first?.availability.monthArraySouthern,
              let timeArray = bugs.first?.availability.timeArray,
              let price = bugs.first?.price,
              let priceFlick = bugs.first?.priceFlick,
              let catchPhrase = bugs.first?.catchPhrase,
              let museumPhrase = bugs.first?.museumPhrase,
              let imageURI = bugs.first?.imageURI,
              let iconURI = bugs.first?.iconURI else {
            return
        }
        XCTAssertEqual(id, 1)
        XCTAssertEqual(filename, "common_butterfly")
        XCTAssertEqual(nameUSen, "common butterfly")
        XCTAssertEqual(nameEUen, "common butterfly")
        XCTAssertEqual(nameEUde, "Kohlweißling")
        XCTAssertEqual(nameEUes, "mariposa común")
        XCTAssertEqual(nameUSes, "mariposa común")
        XCTAssertEqual(nameEUfr, "piéride de la rave")
        XCTAssertEqual(nameUSfr, "piéride de la rave")
        XCTAssertEqual(nameEUit, "farfalla comune")
        XCTAssertEqual(nameEUnl, "koolwitje")
        XCTAssertEqual(nameCNzh, "白粉蝶")
        XCTAssertEqual(nameTWzh, "白粉蝶")
        XCTAssertEqual(nameJPja, "モンシロチョウ")
        XCTAssertEqual(nameKRko, "배추흰나비")
        XCTAssertEqual(nameEUru, "белянка")
        XCTAssertEqual(monthNorthern, "9-6")
        XCTAssertEqual(monthSouthern, "3-12")
        XCTAssertEqual(time, "4am - 7pm")
        XCTAssertEqual(isAllDay, false)
        XCTAssertEqual(isAllYear, false)
        XCTAssertEqual(location, "Flying")
        XCTAssertEqual(rarity, "Common")
        XCTAssertEqual(monthArrayNorthern, [
            9,
            10,
            11,
            12,
            1,
            2,
            3,
            4,
            5,
            6
         ])
        XCTAssertEqual(monthArraySouthern, [
            3,
            4,
            5,
            6,
            7,
            8,
            9,
            10,
            11,
            12
         ])
        XCTAssertEqual(timeArray, [
            4,
            5,
            6,
            7,
            8,
            9,
            10,
            11,
            12,
            13,
            14,
            15,
            16,
            17,
            18
         ])
        XCTAssertEqual(price, 160)
        XCTAssertEqual(priceFlick, 240)
        XCTAssertEqual(catchPhrase, "I caught a common butterfly! They often flutter by!")
        XCTAssertEqual(museumPhrase, "The common butterfly would have you believe it is but a beautiful friend flitting prettily about the flowers. Bah, I say! They may seem innocent things with their pretty white wings, but they hide a dark side! The common butterfly caterpillar is called a cabbage worm, you see, and it's a most voracious pest. The ravenous beasts chew through cabbage, broccoli, kale and the like with a devastating gusto. And my feathers! Their green coloring is truly GROSS! A hoo-rrific hue, I say.")
        XCTAssertEqual(imageURI, "https://acnhapi.com/v1/images/bugs/1")
        XCTAssertEqual(iconURI, "https://acnhapi.com/v1/icons/bugs/1")
    }
    
    func testFossilJsonMapping() throws {
        guard let id = fossils.first?.id.uuidString,
              let filename = fossils.first?.fileName,
              let nameUSen = fossils.first?.name.nameUSen,
              let nameEUen = fossils.first?.name.nameEUen,
              let nameEUde = fossils.first?.name.nameEUde,
              let nameEUes = fossils.first?.name.nameEUes,
              let nameUSes = fossils.first?.name.nameUSes,
              let nameEUfr = fossils.first?.name.nameEUfr,
              let nameUSfr = fossils.first?.name.nameUSfr,
              let nameEUit = fossils.first?.name.nameEUit,
              let nameEUnl = fossils.first?.name.nameEUnl,
              let nameCNzh = fossils.first?.name.nameCNzh,
              let nameTWzh = fossils.first?.name.nameTWzh,
              let nameJPja = fossils.first?.name.nameJPja,
              let nameKRko = fossils.first?.name.nameKRko,
              let nameEUru = fossils.first?.name.nameEUru,
              let price = fossils.first?.price,
              let museumPhrase = fossils.first?.museumPhrase,
              let imageURI = fossils.first?.imageURI,
              let partOf = fossils.first?.partOf else {
            return
        }
        XCTAssertEqual(id, id)
        XCTAssertEqual(filename, "acanthostega")
        XCTAssertEqual(nameUSen, "acanthostega")
        XCTAssertEqual(nameEUen, "acanthostega")
        XCTAssertEqual(nameEUde, "Acanthostega")
        XCTAssertEqual(nameEUes, "acantostega")
        XCTAssertEqual(nameUSes, "acantostega")
        XCTAssertEqual(nameEUfr, "acanthostéga")
        XCTAssertEqual(nameUSfr, "acanthostéga")
        XCTAssertEqual(nameEUit, "acantostega")
        XCTAssertEqual(nameEUnl, "acanthostega")
        XCTAssertEqual(nameCNzh, "棘螈")
        XCTAssertEqual(nameTWzh, "棘螈")
        XCTAssertEqual(nameJPja, "アカントステガ")
        XCTAssertEqual(nameKRko, "아칸토스테가")
        XCTAssertEqual(nameEUru, "акантостега")
        XCTAssertEqual(price, 2000)
        XCTAssertEqual(museumPhrase, "The acanthostega! Said to be one of the earliest amphibians, it existed well before dinosaurs. Because they lived as fish not long before, they still had gills and very webbed \"hands.\". To toss away the life they knew and venture onto unknown lands... they must have been very brave! Hmm... Does it still count as bravery if you have no understanding of what you're doing?")
        XCTAssertEqual(imageURI, "https://acnhapi.com/v1/images/fossils/acanthostega")
        XCTAssertEqual(partOf, "acanthostega")
    }
}
