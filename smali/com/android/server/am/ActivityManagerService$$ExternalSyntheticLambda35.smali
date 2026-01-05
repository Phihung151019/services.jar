.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda35;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda35;->f$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHeavyHit(Ljava/util/List;IFJ)V
    .locals 10

    iget v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda35;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda35;->f$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    new-instance v1, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda43;

    const/4 v8, 0x2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda43;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/util/List;IFJI)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    move-object v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda35;->f$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    new-instance v2, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda43;

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda43;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/util/List;IFJI)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_1
    move-object v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda35;->f$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    new-instance v2, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda43;

    const/4 v9, 0x1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda43;-><init>(Lcom/android/server/am/ActivityManagerService;Ljava/util/List;IFJI)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
