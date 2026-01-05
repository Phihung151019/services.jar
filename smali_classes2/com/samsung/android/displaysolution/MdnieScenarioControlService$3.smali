.class public final Lcom/samsung/android/displaysolution/MdnieScenarioControlService$3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$3;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    return-void
.end method


# virtual methods
.method public final onFoldStateChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$3;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mIsFolded:Z

    return-void
.end method

.method public final onTableModeChanged(Z)V
    .locals 0

    return-void
.end method
