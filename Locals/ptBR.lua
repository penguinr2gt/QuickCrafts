--============================================================================
-- QuickCrafts: Locals/enUS.lua
-- localization for Portuguese
--============================================================================

local addonName, addon = ...

addon.LOCAL_PT = {}

function addon.LOCAL_PT:GetData()
    local TEXT = addon.CONST.TEXT
    
return {
        --====================================================================
        -- STARTUP MESSAGES
        --====================================================================
        
        [TEXT.ADDON_LOADED] = "%s v%s carregado! Fonte de preço: %s. Digite /calc para abrir.",
        [TEXT.ADDON_LOADED_NO_PRICE] = "%s v%s carregado! Aviso: Auctionator não detectado.",

        --====================================================================
        -- SLASH COMMANDS/HELP MENU
        --====================================================================
        
        [TEXT.HELP_TITLE] = "Comandos QuickCrafts:",
        [TEXT.HELP_CMD_CALC] = "/calc - Ativa a janela de calculos",
        [TEXT.HELP_CMD_HELP] = "/calc help - Mostra essa mensagem de ajuda",

        --====================================================================
        -- MAIN TITLE (not sure if this one should be translated)
        --====================================================================
        
        [TEXT.WINDOW_TITLE] = "QuickCrafts",

        --====================================================================
        -- TAB NAMES
        --====================================================================
        
        [TEXT.TAB_PIGMENTS] = "Pigmentos",
        [TEXT.TAB_TRANSMUTES] = "Transmutação",

        --====================================================================
        -- OPTIONS ON MAIN PAGE
        --====================================================================
        
        [TEXT.OPT_AH_CUT] = "5% Comissão da AH",
        [TEXT.OPT_TRANSMUTE_MASTER] = "Mestre da Transmutação",
        [TEXT.OPT_BUY_PIGMENTS] = "Comprar pigmentos na AH",
        [TEXT.BTN_REFRESH] = "Atualizar",

        --====================================================================
        -- REFRESH TOOLTIPS
        --====================================================================
        
        [TEXT.REFRESH_TOOLTIP_TITLE] = "Atualizar preços",
        [TEXT.REFRESH_TOOLTIP_DESC] = "Atualiza os preços usando o últimos escaneamento do Auctionator.",
        [TEXT.REFRESH_TOOLTIP_HINT] = "Escanea a AH usando PRIMEIRO Auctionator, ou vá em Visão detalhada pra fazer um escaneamento",

        --====================================================================
        -- COLUMN HEADERS ON MAIN PAGE (TRANSMUTES)
        --====================================================================
        
        [TEXT.HEADER_RECIPE] = "Receita",
        [TEXT.HEADER_COST] = "Custo",
        [TEXT.HEADER_SELL] = "Venda",
        [TEXT.HEADER_PROFIT] = "Lucro",

        --====================================================================
        -- COLUMN HEADERS ON MAIN PAGE (PIGMENTS)
        --====================================================================
        
        [TEXT.HEADER_PIGMENT] = "Pigmento",
        [TEXT.HEADER_CHEAPEST_HERB] = "Erva mais barata",
        [TEXT.HEADER_BEST_DYE] = "Melhor tintura",

        --====================================================================
        -- ROW TOOLTIPS ON MAIN PAGE (PIGMENTS)
        --====================================================================
        
        [TEXT.CLICK_FOR_DETAILS] = "Clique para detalhamento completo",
        [TEXT.REQUIRES_HERBS] = "Requer %d ervas",
        [TEXT.CHEAPEST_HERB_LABEL] = "Erva mais barata:",
        [TEXT.BEST_DYE_LABEL] = "Melhor tintura para craftar:",
        [TEXT.PROFIT_LABEL] = "Lucro:",

        --====================================================================
        -- BUTTONS ON DETAIL VIEWS
        --====================================================================
        
        [TEXT.BTN_BACK] = "< Voltar",
        [TEXT.BTN_SEARCH_AH] = "Procurar na AH",

        --====================================================================
        -- SEARCH TOOLTIPS ON DETAIL VIEWS
        --====================================================================
        
        [TEXT.SEARCH_AH_TOOLTIP_TITLE] = "Procurar na Casa de Leilão",
        [TEXT.SEARCH_AH_TOOLTIP_DESC] = "Abre Auctionator e procura por",
        [TEXT.SEARCH_AH_TOOLTIP_DESC2] = "todos os materiais + o produto.",
        [TEXT.SEARCH_AH_MUST_OPEN] = "Casa de Leilão precisa estar aberta!",
        [TEXT.SEARCH_AH_READY] = "Casa de Leilão está aberta - pronto!",

        --====================================================================
        -- PIGMENTS DETAIL VIEW TOOLTIP
        --====================================================================
        
        [TEXT.SEARCH_AH_PIGMENT_DESC] = "Procure por ervas, pigmentos e tinturas.",

        --====================================================================
        -- TRANSMUTE DETAIL VIEWS SECTIONS
        --====================================================================
        
        [TEXT.SECTION_MATERIALS] = "Materiais",
        [TEXT.SECTION_PRODUCT] = "Produto",

        --====================================================================
        -- SUMMARY ON TRANSMUTE DETAIL VIEW
        --====================================================================
        
        [TEXT.TOTAL_MATERIAL_COST] = "Custo total de material:",
        [TEXT.EFFECTIVE_COST_MASTERY] = "Custo-benefício (c/ Maestria):",
        [TEXT.SALE_AFTER_CUT] = "Venda (menos comissão da AH):",
        [TEXT.PROFIT_COLON] = "LUCRO:",
        [TEXT.MARGIN_SUFFIX] = "margem",

        --====================================================================
        -- PIGMENTS DETAIL VIEW SECTIONS
        --====================================================================
        
        [TEXT.SECTION_CRAFTABLE_DYES] = "Pigmentos craftáveis",
        [TEXT.SECTION_DYES_HIGHLIGHT] = "(mais caro em destaque)",
        [TEXT.SECTION_DYES_NONE] = "(nenhum definido)",
        [TEXT.SECTION_AVAILABLE_HERBS] = "Ervas Disponíveis",
        [TEXT.SECTION_HERBS_HIGHLIGHT] = "(mais barato em destaque)",
        [TEXT.SECTION_SUMMARY] = "Resumo",

        --====================================================================
        -- SUMMARY ON PIGMENTS DETAIL VIEW
        --====================================================================
        
        [TEXT.CHEAPEST_HERB] = "Erva mais barata:",
        [TEXT.COST_HERBS] = "Custo (10 ervas):",
        [TEXT.BEST_DYE] = "Melhor pigmento:",
        [TEXT.DYE_SALE] = "Venda pigmento (depois da comissão):",

        --====================================================================
        -- STATUS MESSAGES
        --====================================================================
        
        [TEXT.STATUS_AUCTIONATOR_NOT_DETECTED] = "Auctionator não está aberto!",
        [TEXT.STATUS_UPDATED] = "Atualizado: %s",
        [TEXT.STATUS_NO_PRICES] = "Sem preços",
        [TEXT.STATUS_NO_DATA] = "Sem informação",

        --====================================================================
        -- EMPTY MESSAGES
        --====================================================================
        
        [TEXT.EMPTY_PIGMENTS] = "Nenhum pigmento definido ainda.\nEdite Pigments.lua para adicionar informação de pigmento.",
        [TEXT.EMPTY_NO_DYES] = "Nenhuma tintura definida",

        --====================================================================
        -- ERROR MESSAGES
        --====================================================================
        
        [TEXT.ERR_ITEM_NAMES_NOT_LOADED] = "Nome dos itens não carregados - tente novamente",
        [TEXT.ERR_AH_MUST_BE_OPEN] = "Casa de Leilão deve estar aberta pra pesquisar",
        [TEXT.ERR_SEARCH_API_NOT_AVAILABLE] = "Procurar API não disponível",
        [TEXT.ERR_ITEM_NAME_NOT_LOADED] = "Nome do item não carregado",
        [TEXT.ERR_NO_SEARCH_METHOD] = "Nenhum método de procura disponível",
        [TEXT.ERR_SEARCH_FAILED] = "Pesquisa falhou: %s",

        --====================================================================
        -- PRICE FORMATTING ISSUES
        --====================================================================
        
        [TEXT.PRICE_NA] = "N/D",
        [TEXT.UNKNOWN_ITEM] = "Item desconhecido",

        --====================================================================
        -- EXTRAS
        --====================================================================
        
        [TEXT.EACH_ABBREV] = "cada",
    }
end
