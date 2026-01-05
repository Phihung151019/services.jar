.class public final Lcom/android/server/dreams/DreamManagerService$LocalService;
.super Landroid/service/dreams/DreamManagerInternal;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-direct {p0}, Landroid/service/dreams/DreamManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public final canStartDreaming(Z)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mcanStartDreamingInternal(Lcom/android/server/dreams/DreamManagerService;Z)Z

    move-result p0

    return p0
.end method

.method public final dreamConditionActive()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->dreamConditionActiveInternal()Z

    move-result p0

    return p0
.end method

.method public final isDreaming()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->isDreamingInternal()Z

    move-result p0

    return p0
.end method

.method public final registerDreamManagerStateListener(Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    iget-object v0, v0, Lcom/android/server/dreams/DreamManagerService;->mDreamManagerStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mKeepDreamingWhenUnpluggingDefault:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mSystemDreamComponent:Landroid/content/ComponentName;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1, p0}, Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;->onKeepDreamingWhenUnpluggingChanged(Z)V

    return-void
.end method

.method public final requestDream()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {p0}, Lcom/android/server/dreams/DreamManagerService;->requestDreamInternal()V

    return-void
.end method

.method public final startDream(ZLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/dreams/DreamManagerService;->startDreamInternal(Ljava/lang/String;Z)V

    return-void
.end method

.method public final stopDream(ZLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/dreams/DreamManagerService;->stopDreamInternal(Ljava/lang/String;Z)V

    return-void
.end method

.method public final unregisterDreamManagerStateListener(Landroid/service/dreams/DreamManagerInternal$DreamManagerStateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mDreamManagerStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
