.class public final Lcom/android/server/chimera/genie/GenieMemoryManager$ModelEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/genie/GenieMemoryManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager$ModelEventReceiver;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "size"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string v0, "GenieMemoryManager"

    if-eqz p1, :cond_0

    const-string/jumbo v1, "Receive broadcast: "

    const-string v2, " size : "

    invoke-static {p2, v1, p1, v2, v0}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v1, "com.samsung.GEN_AI_RECLAIM"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "Calling reclaimer through Broadcast "

    if-eqz v1, :cond_2

    if-nez p2, :cond_1

    sget p2, Lcom/android/server/chimera/genie/GenieMemoryManager;->DEFAULT_SAMSUNG_MODEL_SIZE:I

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/chimera/genie/MemRequest;

    invoke-direct {v0, v2, p2}, Lcom/samsung/android/chimera/genie/MemRequest;-><init>(II)V

    iget-object p2, p0, Lcom/android/server/chimera/genie/GenieMemoryManager$ModelEventReceiver;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    invoke-virtual {p2, v0, p1}, Lcom/android/server/chimera/genie/GenieMemoryManager;->prepareMemory(Lcom/samsung/android/chimera/genie/MemRequest;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/chimera/genie/GenieConfigurations;->isGenieUnloadPolicyEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager$ModelEventReceiver;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    const-string/jumbo p1, "com.samsung.android.offline.languagemodel"

    invoke-virtual {p0, p1}, Lcom/android/server/chimera/genie/GenieMemoryManager;->startUnloadTimerLocked(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v1, "AICORE_BROADCAST_ACTION_MODEL_LOADING"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p2, :cond_3

    sget p2, Lcom/android/server/chimera/genie/GenieMemoryManager;->DEFAULT_GOOGLE_MODEL_SIZE:I

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/chimera/genie/MemRequest;

    invoke-direct {v0, v2, p2}, Lcom/samsung/android/chimera/genie/MemRequest;-><init>(II)V

    iget-object p0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager$ModelEventReceiver;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/chimera/genie/GenieMemoryManager;->prepareMemory(Lcom/samsung/android/chimera/genie/MemRequest;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string/jumbo p2, "com.samsung.GEN_AI_RECLAIM_END"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, "AICORE_BROADCAST_ACTION_MODEL_UNLOADED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    return-void

    :cond_6
    :goto_0
    const-string/jumbo p1, "Stopping Reclaimer through Broadcast "

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/chimera/genie/GenieMemoryManager$ModelEventReceiver;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    iget-object p1, p1, Lcom/android/server/chimera/genie/GenieMemoryManager;->mMemoryReclaimer:Lcom/android/server/chimera/genie/MemoryReclaimer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/server/chimera/genie/GenieMemoryManager$ModelEventReceiver;->this$0:Lcom/android/server/chimera/genie/GenieMemoryManager;

    invoke-virtual {p0}, Lcom/android/server/chimera/genie/GenieMemoryManager;->setGenieSessionEnd()V

    return-void
.end method
