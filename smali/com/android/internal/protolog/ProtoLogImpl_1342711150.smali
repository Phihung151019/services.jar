.class public abstract Lcom/android/internal/protolog/ProtoLogImpl_1342711150;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final sCacheUpdater:Lcom/android/internal/protolog/ProtoLogImpl_1342711150$$ExternalSyntheticLambda0;

.field public static final sLogGroups:Ljava/util/TreeMap;

.field public static sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;


# direct methods
.method public static -$$Nest$smisEnabled(Lcom/android/internal/protolog/common/IProtoLog;Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z
    .locals 0

    invoke-interface {p0, p1, p2}, Lcom/android/internal/protolog/common/IProtoLog;->isEnabled(Lcom/android/internal/protolog/common/IProtoLogGroup;Lcom/android/internal/protolog/common/LogLevel;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string/jumbo v1, "WM_ERROR"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_ERROR:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_ORIENTATION"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_ORIENTATION_CHANGE"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION_CHANGE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_FOCUS_LIGHT"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_BOOT"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BOOT:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_RESIZE"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_RESIZE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_ADD_REMOVE"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_CONFIGURATION"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_SWITCH"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SWITCH:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_CONTAINERS"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTAINERS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_FOCUS"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_IMMERSIVE"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IMMERSIVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_LOCKTASK"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_STATES"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_TASKS"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_STARTING_WINDOW"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_SHOW_TRANSACTIONS"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_SHOW_SURFACE_ALLOC"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_APP_TRANSITIONS"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_ANIM"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_APP_TRANSITIONS_ANIM"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_RECENTS_ANIMATIONS"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_DRAW"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_DRAW:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_REMOTE_ANIMATIONS"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_SCREEN_ON"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_KEEP_SCREEN_ON"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_SLEEP_TOKEN"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SLEEP_TOKEN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_WINDOW_MOVEMENT"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_MOVEMENT:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_IME"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_WINDOW_ORGANIZER"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_SYNC_ENGINE"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_WINDOW_TRANSITIONS"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_WINDOW_TRANSITIONS_MIN"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_WINDOW_INSETS"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_INSETS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_CONTENT_RECORDING"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTENT_RECORDING:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_WALLPAPER"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_BACK_PREVIEW"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_DREAM"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_DREAM:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_DIMMER"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_DIMMER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_TPL"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_EMBEDDED_WINDOWS"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_EMBEDDED_WINDOWS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_PRESENTATION"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_PRESENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_FORCE_DEBUG_ORIENTATION"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_FORCE_DEBUG_FOCUS_LIGHT"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_FORCE_DEBUG_BOOT"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_BOOT:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_FORCE_DEBUG_RESIZE"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_RESIZE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_FORCE_DEBUG_ADD_REMOVE"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_FORCE_DEBUG_CONFIGURATION"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_FORCE_DEBUG_FOCUS"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_FOCUS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_FORCE_DEBUG_STARTING_WINDOW"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_FORCE_SHOW_TRANSACTIONS"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_FORCE_SHOW_SURFACE_ALLOC"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_SHOW_SURFACE_ALLOC:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_FORCE_DEBUG_APP_TRANSITIONS"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_FORCE_DEBUG_APP_TRANSITIONS_ANIM"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_FORCE_DEBUG_RECENTS_ANIMATIONS"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_FORCE_DEBUG_DRAW"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_DRAW:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_FORCE_DEBUG_REMOTE_ANIMATIONS"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_REMOTE_ANIMATIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_FORCE_DEBUG_SCREEN_ON"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_FORCE_DEBUG_KEEP_SCREEN_ON"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_KEEP_SCREEN_ON:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_FORCE_DEBUG_WINDOW_MOVEMENT"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_WINDOW_MOVEMENT:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_FORCE_DEBUG_IME"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_FORCE_DEBUG_ANIM"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_ANIM:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_FORCE_DEBUG_WINDOW_TRANSITIONS"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_FORCE_DEBUG_SYNC_ENGINE"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_FORCE_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "WM_DEBUG_INPUT"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_INPUT:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "TEST_GROUP"

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->TEST_GROUP:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->sLogGroups:Ljava/util/TreeMap;

    new-instance v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->sCacheUpdater:Lcom/android/internal/protolog/ProtoLogImpl_1342711150$$ExternalSyntheticLambda0;

    return-void
.end method

.method public static varargs d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->DEBUG:Lcom/android/internal/protolog/common/LogLevel;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/protolog/common/IProtoLog;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->ERROR:Lcom/android/internal/protolog/common/LogLevel;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/protolog/common/IProtoLog;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return-void
.end method

.method public static declared-synchronized getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;
    .locals 6

    const-class v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;

    if-nez v1, :cond_1

    const-string/jumbo v1, "ProtoLogImpl"

    const-class v2, Lcom/android/internal/protolog/ProtoLogImpl;

    const-string/jumbo v2, "Setting up ProtoLogImpl with viewerConfigPath = /etc/core.protolog.pb"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->sLogGroups:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/internal/protolog/common/IProtoLogGroup;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/protolog/common/IProtoLogGroup;

    new-instance v2, Ljava/io/File;

    const-string v3, "/etc/core.protolog.pb"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v1, "ProtoLogImpl"

    const-class v2, Lcom/android/internal/protolog/ProtoLogImpl;

    const-string v2, "Failed to find viewer config file /etc/core.protolog.pb when setting up ProtoLogImpl. ProtoLog will not work here!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/internal/protolog/NoViewerConfigProtoLogImpl;

    invoke-direct {v1}, Lcom/android/internal/protolog/NoViewerConfigProtoLogImpl;-><init>()V

    sput-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    invoke-static {}, Lcom/android/internal/protolog/ProtoLog;->getSharedSingleInstanceDataSource()Lcom/android/internal/protolog/ProtoLogDataSource;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;

    const-string v4, "/etc/core.protolog.pb"

    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->sCacheUpdater:Lcom/android/internal/protolog/ProtoLogImpl_1342711150$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v4, v5, v1}, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;-><init>(Lcom/android/internal/protolog/ProtoLogDataSource;Ljava/lang/String;Lcom/android/internal/protolog/ProtoLogCacheUpdater;[Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    sput-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;

    invoke-virtual {v3}, Lcom/android/internal/protolog/ProcessedPerfettoProtoLogImpl;->enable()V
    :try_end_1
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->sCacheUpdater:Lcom/android/internal/protolog/ProtoLogImpl_1342711150$$ExternalSyntheticLambda0;

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;

    invoke-virtual {v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$$ExternalSyntheticLambda0;->update(Lcom/android/internal/protolog/common/IProtoLog;)V

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    :goto_1
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static varargs i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->INFO:Lcom/android/internal/protolog/common/LogLevel;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/protolog/common/IProtoLog;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return-void
.end method

.method public static declared-synchronized setSingleInstance(Lcom/android/internal/protolog/common/IProtoLog;)V
    .locals 1

    const-class v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->sServiceInstance:Lcom/android/internal/protolog/common/IProtoLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static varargs v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->VERBOSE:Lcom/android/internal/protolog/common/LogLevel;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/protolog/common/IProtoLog;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->getSingleInstance()Lcom/android/internal/protolog/common/IProtoLog;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/common/LogLevel;->WARN:Lcom/android/internal/protolog/common/LogLevel;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/protolog/common/IProtoLog;->log(Lcom/android/internal/protolog/common/LogLevel;Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return-void
.end method
