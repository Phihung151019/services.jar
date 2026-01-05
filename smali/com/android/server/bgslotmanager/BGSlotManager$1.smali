.class public final Lcom/android/server/bgslotmanager/BGSlotManager$1;
.super Landroid/os/CountDownTimer;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/bgslotmanager/BGSlotManager;


# direct methods
.method public constructor <init>(Lcom/android/server/bgslotmanager/BGSlotManager;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/bgslotmanager/BGSlotManager$1;->this$0:Lcom/android/server/bgslotmanager/BGSlotManager;

    const-wide/32 v0, 0xea60

    invoke-direct {p0, v0, v1, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    const-string/jumbo v0, "swapTimer onfinish"

    const-string v1, "DynamicHiddenApp_BGSlotManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/bgslotmanager/BGSlotManager$1;->this$0:Lcom/android/server/bgslotmanager/BGSlotManager;

    invoke-virtual {p0}, Lcom/android/server/bgslotmanager/BGSlotManager;->setBonusMaxCachedAppsPerSwap()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "change Max_Cached by setSwapTimer : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/android/server/bgslotmanager/BGSlotManager;->MAX_CACHED_APPS:I

    invoke-static {p0, v0, v1}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method public final onTick(J)V
    .locals 0

    return-void
.end method
