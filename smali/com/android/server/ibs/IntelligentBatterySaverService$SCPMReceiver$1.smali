.class public final Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver$1;->this$1:Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver$1;->this$1:Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$SCPMReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSScpmManager:Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->registerScpm()V

    :cond_0
    return-void
.end method
