.class public final Lcom/android/server/flags/DynamicFlagBinderDelegate$BinderGriever;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mPid:I

.field public final synthetic this$0:Lcom/android/server/flags/DynamicFlagBinderDelegate;


# direct methods
.method public constructor <init>(Lcom/android/server/flags/DynamicFlagBinderDelegate;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$BinderGriever;->this$0:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    iput p2, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$BinderGriever;->mPid:I

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$BinderGriever;->this$0:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    iget-object v0, v0, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mCallbacks:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$BinderGriever;->this$0:Lcom/android/server/flags/DynamicFlagBinderDelegate;

    iget-object v1, v1, Lcom/android/server/flags/DynamicFlagBinderDelegate;->mCallbacks:Ljava/util/Map;

    iget p0, p0, Lcom/android/server/flags/DynamicFlagBinderDelegate$BinderGriever;->mPid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
