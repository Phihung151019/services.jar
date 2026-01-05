.class public final synthetic Lcom/android/server/adb/AdbService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:B


# direct methods
.method public synthetic constructor <init>(ZB)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/adb/AdbService$$ExternalSyntheticLambda0;->f$0:Z

    iput-byte p2, p0, Lcom/android/server/adb/AdbService$$ExternalSyntheticLambda0;->f$1:B

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/adb/AdbService$$ExternalSyntheticLambda0;->f$0:Z

    iget-byte p0, p0, Lcom/android/server/adb/AdbService$$ExternalSyntheticLambda0;->f$1:B

    check-cast p1, Landroid/debug/IAdbCallback;

    const-string/jumbo v1, "Sending enable = "

    const-string v2, ", type = "

    const-string v3, " to "

    invoke-static {p0, v1, v2, v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdbService"

    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-interface {p1, v0, p0}, Landroid/debug/IAdbCallback;->onDebuggingChanged(ZB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "Unable to send onDebuggingChanged:"

    invoke-static {v2, p1, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
