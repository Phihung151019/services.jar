.class public final synthetic Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/locksettings/LockSettingsService;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/locksettings/LockSettingsService;Landroid/content/Intent;Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/locksettings/LockSettingsService;

    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda12;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda12;->f$2:Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;

    iput p4, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda12;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/locksettings/LockSettingsService;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda12;->f$1:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda12;->f$2:Lcom/android/server/locksettings/LockSettingsService$UpdateVerifierServiceConnection;

    iget p0, p0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda12;->f$3:I

    iget-object v3, v0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v3, v1, v2, v4, p0}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/server/locksettings/LockSettingsService;->mShouldUnbind:Z

    return-void
.end method
