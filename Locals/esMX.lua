--============================================================================
-- QuickCrafts: Locals/enUS.lua
-- localization for Spanish (Latin America)
--============================================================================

local addonName, addon = ...

addon.LOCAL_MX = {}

function addon.LOCAL_MX:GetData()
    local TEXT = addon.CONST.TEXT
    
return {
        --====================================================================
        -- STARTUP MESSAGES
        --====================================================================
        
        [TEXT.ADDON_LOADED] = "%s v%s cargado! Fuente de precios: %s. Escribe /calc para abrir.",
        [TEXT.ADDON_LOADED_NO_PRICE] = "%s v%s cargado! Advertencia: Auctionator no detectado.",

        --====================================================================
        -- SLASH COMMANDS/HELP MENU
        --====================================================================
        
        [TEXT.HELP_TITLE] = "QuickCrafts Comandos:",
        [TEXT.HELP_CMD_CALC] = "/calc - Alternar la ventana de la calculadora",
        [TEXT.HELP_CMD_HELP] = "/calc help - Mostrar este mensaje de ayuda",

        --====================================================================
        -- TAB NAMES
        --====================================================================
        
        [TEXT.TAB_PIGMENTS] = "Pigmentos",
        [TEXT.TAB_TRANSMUTES] = "Trasmutaciones",

        --====================================================================
        -- OPTIONS ON MAIN PAGE
        --====================================================================
        
        [TEXT.OPT_AH_CUT] = "5% de comisión de la AH",
        [TEXT.OPT_TRANSMUTE_MASTER] = "Maestro de Trasmutación",
        [TEXT.OPT_BUY_PIGMENTS] = "Comprar pigmentos en la AH",
        [TEXT.BTN_REFRESH] = "Actualizar",

        --====================================================================
        -- REFRESH TOOLTIPS
        --====================================================================
        
        [TEXT.REFRESH_TOOLTIP_TITLE] = "Actualizar precios",
        [TEXT.REFRESH_TOOLTIP_DESC] = "Actualiza los precios usando el último escaneo de Auctionator.",
        [TEXT.REFRESH_TOOLTIP_HINT] = "Escanea la AH using con Auctionator PRIMERO, o entra en la vista detallada para hacer un escaneo",

        --====================================================================
        -- COLUMN HEADERS ON MAIN PAGE (TRANSMUTES)
        --====================================================================
        
        [TEXT.HEADER_RECIPE] = "Receta",
        [TEXT.HEADER_COST] = "Costo",
        [TEXT.HEADER_SELL] = "Venta",
        [TEXT.HEADER_PROFIT] = "Ganancia",

        --====================================================================
        -- COLUMN HEADERS ON MAIN PAGE (PIGMENTS)
        --====================================================================
        
        [TEXT.HEADER_PIGMENT] = "Pigmento",
        [TEXT.HEADER_CHEAPEST_HERB] = "Hierba más barata",
        [TEXT.HEADER_BEST_DYE] = "Tinte más rentable",

        --====================================================================
        -- ROW TOOLTIPS ON MAIN PAGE (PIGMENTS)
        --====================================================================
        
        [TEXT.CLICK_FOR_DETAILS] = "Haz clic para ver el desglose detallado",
        [TEXT.REQUIRES_HERBS] = "Requiere %d hierbas",
        [TEXT.CHEAPEST_HERB_LABEL] = "Hierba más barata:",
        [TEXT.BEST_DYE_LABEL] = "El tinte más rentable para crear:",
        [TEXT.PROFIT_LABEL] = "Ganancia:",

        --====================================================================
        -- BUTTONS ON DETAIL VIEWS
        --====================================================================
        
        [TEXT.BTN_BACK] = "< Atrás",
        [TEXT.BTN_SEARCH_AH] = "Buscar AH",

        --====================================================================
        -- SEARCH TOOLTIPS ON DETAIL VIEWS
        --====================================================================
        
        [TEXT.SEARCH_AH_TOOLTIP_TITLE] = "Buscar en la Casa de Subastas",
        [TEXT.SEARCH_AH_TOOLTIP_DESC] = "Abre Auctionator y busca",
        [TEXT.SEARCH_AH_TOOLTIP_DESC2] = "todos los materiales + el producto.",
        [TEXT.SEARCH_AH_MUST_OPEN] = "La Casa de Subastas debe estar abierta!",
        [TEXT.SEARCH_AH_READY] = "La Casa de Subastas está abierta - listo!",

        --====================================================================
        -- PIGMENTS DETAIL VIEW TOOLTIP
        --====================================================================
        
        [TEXT.SEARCH_AH_PIGMENT_DESC] = "Busca hierbas, pigmentos y tintes.",

        --====================================================================
        -- TRANSMUTE DETAIL VIEWS SECTIONS
        --====================================================================
        
        [TEXT.SECTION_MATERIALS] = "Materiales",
        [TEXT.SECTION_PRODUCT] = "Producto",

        --====================================================================
        -- SUMMARY ON TRANSMUTE DETAIL VIEW
        --====================================================================
        
        [TEXT.TOTAL_MATERIAL_COST] = "Costo total de materiales:",
        [TEXT.EFFECTIVE_COST_MASTERY] = "Costo efectivo (con maestría):",
        [TEXT.SALE_AFTER_CUT] = "Venta (tras comisión):",
        [TEXT.PROFIT_COLON] = "GANANCIA:",
        [TEXT.MARGIN_SUFFIX] = "margen",

        --====================================================================
        -- PIGMENTS DETAIL VIEW SECTIONS
        --====================================================================
        
        [TEXT.SECTION_CRAFTABLE_DYES] = "Tintes que se pueden crear",
        [TEXT.SECTION_DYES_HIGHLIGHT] = "(el más caro resaltado)",
        [TEXT.SECTION_DYES_NONE] = "(ninguno definido)",
        [TEXT.SECTION_AVAILABLE_HERBS] = "Hierbas disponibles",
        [TEXT.SECTION_HERBS_HIGHLIGHT] = "(la más barata resaltada)",
        [TEXT.SECTION_SUMMARY] = "Resumen",

        --====================================================================
        -- SUMMARY ON PIGMENTS DETAIL VIEW
        --====================================================================
        
        [TEXT.CHEAPEST_HERB] = "Hierba más barata:",
        [TEXT.COST_HERBS] = "Costo (10 hierbas):",
        [TEXT.BEST_DYE] = "Tinte más rentable:",
        [TEXT.DYE_SALE] = "Venta del tinte (tras comisión):",

        --====================================================================
        -- STATUS MESSAGES
        --====================================================================
        
        [TEXT.STATUS_AUCTIONATOR_NOT_DETECTED] = "Auctionator no detectado!",
        [TEXT.STATUS_UPDATED] = "Actualizado: %s",
        [TEXT.STATUS_NO_PRICES] = "Sin precios",
        [TEXT.STATUS_NO_DATA] = "Sin datos",

        --====================================================================
        -- EMPTY MESSAGES
        --====================================================================
        
        [TEXT.EMPTY_PIGMENTS] = "No se han definido pigmentos aún.\nEdita Pigments.lua para agregar datos de pigmentos.",
        [TEXT.EMPTY_NO_DYES] = "No se han definido tintes",

        --====================================================================
        -- ERROR MESSAGES
        --====================================================================
        
        [TEXT.ERR_ITEM_NAMES_NOT_LOADED] = "Los nombres de objetos aún no se han cargado - inténtalo de nuevo",
        [TEXT.ERR_AH_MUST_BE_OPEN] = "La Casa de Subastas debe estar abierta para buscar",
        [TEXT.ERR_SEARCH_API_NOT_AVAILABLE] = "La API de búsqueda no está disponible",
        [TEXT.ERR_ITEM_NAME_NOT_LOADED] = "Nombre del objeto no cargado",
        [TEXT.ERR_NO_SEARCH_METHOD] = "No hay ningún método de búsqueda disponible",
        [TEXT.ERR_SEARCH_FAILED] = "Búsqueda fallida: %s",

        --====================================================================
        -- PRICE FORMATTING ISSUES
        --====================================================================
        
        [TEXT.PRICE_NA] = "N/D",
        [TEXT.UNKNOWN_ITEM] = "Objeto desconocido",

        --====================================================================
        -- EXTRAS
        --====================================================================
        
        [TEXT.EACH_ABBREV] = "cada uno",
    }
end
