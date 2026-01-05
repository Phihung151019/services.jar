.class public final synthetic Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/AutoFillUI;

.field public final synthetic f$1:Lcom/android/server/autofill/Session;

.field public final synthetic f$10:Landroid/metrics/LogMaker;

.field public final synthetic f$11:Lcom/android/server/autofill/SaveEventLogger;

.field public final synthetic f$12:Z

.field public final synthetic f$13:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/server/autofill/ui/PendingUi;

.field public final synthetic f$4:Ljava/lang/CharSequence;

.field public final synthetic f$5:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Landroid/content/ComponentName;

.field public final synthetic f$8:Landroid/service/autofill/SaveInfo;

.field public final synthetic f$9:Lcom/android/server/autofill/Session;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/Session;ILcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Lcom/android/server/autofill/Session;Landroid/metrics/LogMaker;Lcom/android/server/autofill/SaveEventLogger;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iput-object p2, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$1:Lcom/android/server/autofill/Session;

    iput p3, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$2:I

    iput-object p4, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$3:Lcom/android/server/autofill/ui/PendingUi;

    iput-object p5, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$4:Ljava/lang/CharSequence;

    iput-object p6, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$5:Landroid/graphics/drawable/Drawable;

    iput-object p7, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$6:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$7:Landroid/content/ComponentName;

    iput-object p9, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$8:Landroid/service/autofill/SaveInfo;

    iput-object p10, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$9:Lcom/android/server/autofill/Session;

    iput-object p11, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$10:Landroid/metrics/LogMaker;

    iput-object p12, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$11:Lcom/android/server/autofill/SaveEventLogger;

    iput-boolean p13, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$12:Z

    iput-boolean p14, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$13:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v4, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$1:Lcom/android/server/autofill/Session;

    iget v2, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$2:I

    iget-object v5, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$3:Lcom/android/server/autofill/ui/PendingUi;

    iget-object v8, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$4:Ljava/lang/CharSequence;

    iget-object v9, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$5:Landroid/graphics/drawable/Drawable;

    iget-object v10, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$6:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$7:Landroid/content/ComponentName;

    iget-object v12, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$8:Landroid/service/autofill/SaveInfo;

    iget-object v13, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$9:Lcom/android/server/autofill/Session;

    iget-object v3, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$10:Landroid/metrics/LogMaker;

    move-object v6, v3

    iget-object v3, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$11:Lcom/android/server/autofill/SaveEventLogger;

    iget-boolean v7, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$12:Z

    iget-boolean v14, v0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda6;->f$13:Z

    iget-object v0, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/Session;

    if-eq v4, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1, v4}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    iput-object v4, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUiCallback:Lcom/android/server/autofill/Session;

    iget-object v0, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/server/autofill/ui/AutoFillUI;->getContextForResources(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v15

    iput-object v15, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mContextForResources:Landroid/content/Context;

    new-instance v16, Lcom/android/server/autofill/ui/SaveUi;

    new-instance v0, Lcom/android/server/autofill/ui/AutoFillUI$1;

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/autofill/ui/AutoFillUI$1;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Landroid/metrics/LogMaker;Lcom/android/server/autofill/SaveEventLogger;Lcom/android/server/autofill/Session;Lcom/android/server/autofill/ui/PendingUi;)V

    iget-object v2, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mUiModeMgr:Lcom/android/server/UiModeManagerService$LocalService;

    invoke-virtual {v2}, Lcom/android/server/UiModeManagerService$LocalService;->isNightMode()Z

    move-result v2

    move/from16 v18, v14

    iget-object v14, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    move/from16 v17, v7

    move-object v6, v15

    move-object v15, v0

    move-object v7, v5

    move-object/from16 v5, v16

    move/from16 v16, v2

    invoke-direct/range {v5 .. v18}, Lcom/android/server/autofill/ui/SaveUi;-><init>(Landroid/content/Context;Lcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Lcom/android/server/autofill/Session;Lcom/android/server/autofill/ui/OverlayControl;Lcom/android/server/autofill/ui/AutoFillUI$1;ZZZ)V

    iput-object v5, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mSaveUi:Lcom/android/server/autofill/ui/SaveUi;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, v3, Lcom/android/server/autofill/SaveEventLogger;->mSessionStartTimestamp:J

    sub-long/2addr v0, v4

    iget-object v2, v3, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    new-instance v3, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda0;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v1, v4}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda0;-><init>(JI)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
