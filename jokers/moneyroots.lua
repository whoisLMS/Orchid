SMODS.Joker
{
    key = "moneyroots",
    atlas = "moneyroots",
    blueprint_compat = false,
    rarity = 2,
    cost = 7,
<<<<<<< HEAD
    discovered = false,
=======
    discovered = true,
>>>>>>> ddddcdcd236e692216293a11a30f0132956b9c6d
    pos = { x = 0, y = 0 },
    config = { extra = { cap = 5 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.cap } }
    end,
    add_to_deck = function(self, card, from_debuff)
        G.GAME.current_round.reroll_cost = math.min(card.ability.extra.cap, G.GAME.current_round.reroll_cost)
    end,
    calculate = function(self, card, context)
        if context.reroll_shop then
            G.GAME.current_round.reroll_cost = math.min(card.ability.extra.cap, G.GAME.current_round.reroll_cost)
        end
    end
}