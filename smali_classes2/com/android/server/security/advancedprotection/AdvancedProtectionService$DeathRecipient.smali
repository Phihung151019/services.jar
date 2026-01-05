.class public final Lcom/android/server/security/advancedprotection/AdvancedProtectionService$DeathRecipient;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mBinder:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;


# direct methods
.method public constructor <init>(Lcom/android/server/security/advancedprotection/AdvancedProtectionService;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$DeathRecipient;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    iput-object p2, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$DeathRecipient;->mBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$DeathRecipient;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    iget-object v0, v0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$DeathRecipient;->this$0:Lcom/android/server/security/advancedprotection/AdvancedProtectionService;

    iget-object v1, v1, Lcom/android/server/security/advancedprotection/AdvancedProtectionService;->mCallbacks:Landroid/util/ArrayMap;

    iget-object p0, p0, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$DeathRecipient;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
