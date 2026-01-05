.class public final synthetic Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/AutoFillUI;

.field public final synthetic f$1:Lcom/android/server/autofill/Session;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/service/autofill/FillResponse;

.field public final synthetic f$4:Landroid/view/autofill/AutofillId;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Ljava/lang/CharSequence;

.field public final synthetic f$7:Landroid/graphics/drawable/Drawable;

.field public final synthetic f$8:I

.field public final synthetic f$9:Landroid/metrics/LogMaker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/Session;ILandroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ILandroid/metrics/LogMaker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iput-object p2, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$1:Lcom/android/server/autofill/Session;

    iput p3, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$2:I

    iput-object p4, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$3:Landroid/service/autofill/FillResponse;

    iput-object p5, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$4:Landroid/view/autofill/AutofillId;

    iput-object p6, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$6:Ljava/lang/CharSequence;

    iput-object p8, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$7:Landroid/graphics/drawable/Drawable;

    iput p9, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$8:I

    iput-object p10, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$9:Landroid/metrics/LogMaker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v3, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$1:Lcom/android/server/autofill/Session;

    iget v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$2:I

    iget-object v4, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$3:Landroid/service/autofill/FillResponse;

    iget-object v5, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$4:Landroid/view/autofill/AutofillId;

    iget-object v8, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$5:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$6:Ljava/lang/CharSequence;

    iget-object v11, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$7:Landroid/graphics/drawable/Drawable;

    iget v13, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$8:I

    iget-object v2, p0, Lcom/android/server/autofill/ui/AutoFillUI$$ExternalSyntheticLambda9;->f$9:Landroid/metrics/LogMaker;

    iget-object p0, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/Session;

    if-eq v3, p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1, v3}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAllUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    iget-object p0, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/server/autofill/ui/AutoFillUI;->getContextForResources(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object p0

    iput-object p0, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mContextForResources:Landroid/content/Context;

    new-instance p0, Lcom/android/server/autofill/ui/FillUi;

    iget-object v6, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mContextForResources:Landroid/content/Context;

    iget-object v0, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mUiModeMgr:Lcom/android/server/UiModeManagerService$LocalService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService$LocalService;->isNightMode()Z

    move-result v12

    new-instance v0, Lcom/android/server/autofill/ui/AutoFillUI$1;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/autofill/ui/AutoFillUI$1;-><init>(Lcom/android/server/autofill/ui/AutoFillUI;Landroid/metrics/LogMaker;Lcom/android/server/autofill/Session;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;)V

    iget-object v9, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    move-object v14, v0

    move-object v7, v5

    move-object v5, v6

    move-object v6, v4

    move-object v4, p0

    invoke-direct/range {v4 .. v14}, Lcom/android/server/autofill/ui/FillUi;-><init>(Landroid/content/Context;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Lcom/android/server/autofill/ui/OverlayControl;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZILcom/android/server/autofill/ui/AutoFillUI$1;)V

    iput-object v4, v1, Lcom/android/server/autofill/ui/AutoFillUI;->mFillUi:Lcom/android/server/autofill/ui/FillUi;

    return-void
.end method
