SMODS.Joker {
    key = "eclipse",
    atlas = "eclipse",
    blueprint_compat = false,
    rarity = 3,
    cost = 8,
    pos = { x = 0, y = 0 },
    config = { extra = { h_size = 0, scale = 0.5 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.h_size, card.ability.extra.scale } }
    end,
    calculate = function (self, card, context)
        if context.end_of_round and context.main_eval and not context.blueprint then
            SMODS.scale_card(card, {
                    ref_table = card.ability.extra,
                    ref_value = 'h_size',
                    scalar_value = 'scale',
                    massage_colour = G.C.ATTENTION
            })
            G.hand:change_size(card.ability.extra.scale)
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        G.hand:change_size(-card.ability.extra.h_size)
    end
}
