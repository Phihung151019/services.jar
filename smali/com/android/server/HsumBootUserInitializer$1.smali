.class public final Lcom/android/server/HsumBootUserInitializer$1;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/HsumBootUserInitializer;


# direct methods
.method public constructor <init>(Lcom/android/server/HsumBootUserInitializer;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/HsumBootUserInitializer$1;->this$0:Lcom/android/server/HsumBootUserInitializer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    const-string p1, "HsumBootUserInitializer"

    iget-object v0, p0, Lcom/android/server/HsumBootUserInitializer$1;->this$0:Lcom/android/server/HsumBootUserInitializer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v0, Lcom/android/server/HsumBootUserInitializer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "device_provisioned"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "Marking USER_SETUP_COMPLETE for system user"

    invoke-static {p1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/HsumBootUserInitializer$1;->this$0:Lcom/android/server/HsumBootUserInitializer;

    iget-object p1, p1, Lcom/android/server/HsumBootUserInitializer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "user_setup_complete"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/android/server/HsumBootUserInitializer$1;->this$0:Lcom/android/server/HsumBootUserInitializer;

    iget-object p1, p0, Lcom/android/server/HsumBootUserInitializer;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/server/HsumBootUserInitializer;->mDeviceProvisionedObserver:Lcom/android/server/HsumBootUserInitializer$1;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void

    :catch_0
    move-exception p0

    const-string v0, "DEVICE_PROVISIONED setting not found."

    invoke-static {p1, v0, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
