.class public final Lcom/android/server/notification/CustomManualConditionProvider;
.super Lcom/android/server/notification/SystemConditionProviderService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/notification/CustomManualConditionProvider;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 0

    const-string p0, "    "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "CustomManualConditionProvider"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, ": ENABLED"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final isScheduleEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isValidConditionId(Landroid/net/Uri;)Z
    .locals 0

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidCustomManualConditionId(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public final onBootComplete()V
    .locals 0

    return-void
.end method

.method public final onConnected()V
    .locals 0

    return-void
.end method

.method public final onScheduleEnabled(Z)V
    .locals 0

    return-void
.end method

.method public final onSubscribe(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public final onUnsubscribe(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public final onUserSwitched(Landroid/os/UserHandle;)V
    .locals 0

    return-void
.end method
