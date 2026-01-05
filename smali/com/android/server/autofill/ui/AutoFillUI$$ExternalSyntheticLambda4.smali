.class public final synthetic Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/AutoFillUI;

.field public final synthetic f$1:Lcom/android/server/autofill/Session;

.field public final synthetic f$10:Landroid/metrics/LogMaker;

.field public final synthetic f$2:Landroid/service/autofill/FillResponse;

.field public final synthetic f$3:Landroid/view/autofill/AutofillId;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Landroid/content/ComponentName;

.field public final synthetic f$8:Ljava/lang/Object;

.field public final synthetic f$9:Lcom/android/server/autofill/PresentationStatsEventLogger;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/Session;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/Object;Lcom/android/server/autofill/PresentationStatsEventLogger;Landroid/metrics/LogMaker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iput-object p2, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/autofill/Session;

    iput-object p3, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$2:Landroid/service/autofill/FillResponse;

    iput-object p4, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$3:Landroid/view/autofill/AutofillId;

    iput-object p5, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$5:Landroid/graphics/drawable/Drawable;

    iput-object p7, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$6:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$7:Landroid/content/ComponentName;

    iput-object p9, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$8:Ljava/lang/Object;

    iput-object p10, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$9:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iput-object p11, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$10:Landroid/metrics/LogMaker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v2, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/autofill/Session;

    iget-object v5, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$2:Landroid/service/autofill/FillResponse;

    iget-object v6, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$3:Landroid/view/autofill/AutofillId;

    iget-object v8, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$4:Ljava/lang/String;

    move-object v9, v8

    iget-object v8, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$5:Landroid/graphics/drawable/Drawable;

    move-object v10, v9

    iget-object v9, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$6:Ljava/lang/String;

    move-object v11, v10

    iget-object v10, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$7:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$8:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$9:Lcom/android/server/autofill/PresentationStatsEventLogger;

    iget-object v7, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda4;->f$10:Landroid/metrics/LogMaker;

    iget-object p0, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/Session;

    if-eq v2, p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    new-instance p0, Lcom/android/server/autofill/ui/DialogFillUi;

    iget-object v12, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mContext:Landroid/content/Context;

    iget-object v0, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mUiModeMgr:Lcom/android/server/UiModeManagerService$LocalService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService$LocalService;->isNightMode()Z

    move-result v13

    new-instance v0, Lcom/android/server/autofill/ui/AutoFillUI$3;

    invoke-direct/range {v0 .. v7}, Lcom/android/server/autofill/ui/AutoFillUI$3;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/Session;Ljava/lang/Object;Lcom/android/server/autofill/PresentationStatsEventLogger;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Landroid/metrics/LogMaker;)V

    move-object v7, v11

    iget-object v11, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    move-object v3, p0

    move-object v4, v12

    move v12, v13

    move-object v13, v0

    invoke-direct/range {v3 .. v13}, Lcom/android/server/autofill/ui/DialogFillUi;-><init>(Landroid/content/Context;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Lcom/android/server/autofill/ui/OverlayControl;ZLcom/android/server/autofill/ui/AutoFillUI$3;)V

    iput-object v3, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mFillDialog:Lcom/android/server/autofill/ui/DialogFillUi;

    return-void
.end method
