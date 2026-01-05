.class public final Lcom/android/server/autofill/ui/SaveUi;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCompatMode:Z

.field public final mComponentName:Landroid/content/ComponentName;

.field public mDestroyed:Z

.field public final mDialog:Landroid/app/Dialog;

.field public final mHandler:Landroid/os/Handler;

.field public final mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

.field public final mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

.field public final mServicePackageName:Ljava/lang/String;

.field public final mSubTitle:Ljava/lang/CharSequence;

.field public final mThemeId:I

.field public final mTitle:Ljava/lang/CharSequence;

.field public final mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Landroid/service/autofill/SaveInfo;Lcom/android/server/autofill/Session;Lcom/android/server/autofill/ui/OverlayControl;Lcom/android/server/autofill/ui/AutoFillUI$1;ZZZ)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move/from16 v7, p13

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/autofill/ui/SaveUi;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v8}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v8, v1, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    sget-boolean v9, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string/jumbo v10, "SaveUi"

    if-eqz v9, :cond_0

    invoke-static/range {p11 .. p11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getDisplayId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v9, v11}, [Ljava/lang/Object;

    move-result-object v9

    const-string/jumbo v11, "nightMode: %b displayId: %d"

    invoke-static {v10, v11, v9}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p11, :cond_1

    const v9, 0x103043c

    goto :goto_0

    :cond_1
    const v9, 0x103044a

    :goto_0
    iput v9, v1, Lcom/android/server/autofill/ui/SaveUi;->mThemeId:I

    iput-object v0, v1, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    new-instance v11, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    move-object/from16 v12, p10

    invoke-direct {v11, v12}, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;-><init>(Lcom/android/server/autofill/ui/AutoFillUI$1;)V

    iput-object v11, v1, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    move-object/from16 v11, p9

    iput-object v11, v1, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    iput-object v2, v1, Lcom/android/server/autofill/ui/SaveUi;->mServicePackageName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/server/autofill/ui/SaveUi;->mComponentName:Landroid/content/ComponentName;

    iput-boolean v7, v1, Lcom/android/server/autofill/ui/SaveUi;->mCompatMode:Z

    new-instance v11, Lcom/android/server/autofill/ui/SaveUi$1;

    invoke-static/range {p1 .. p1}, Lcom/android/server/autofill/Helper;->getUserContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v1, v12, v9}, Lcom/android/server/autofill/ui/SaveUi$1;-><init>(Lcom/android/server/autofill/ui/SaveUi;Landroid/content/Context;I)V

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getNegativeActionStyle()I

    move-result v13

    const/16 v15, 0x3e7

    const/4 v14, 0x0

    if-ne v13, v15, :cond_5

    const v13, 0x109016f

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    const v13, 0x1020582

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/ButtonBarLayout;

    invoke-virtual {v13, v14}, Lcom/android/internal/widget/ButtonBarLayout;->setAllowStacking(Z)V

    const v13, 0x104022e

    invoke-virtual {v11, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v14, "ja"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const v14, 0x104022d

    invoke-virtual {v11, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v14

    const-string v15, "CscFeature_Common_ReplaceSecBrandAsGalaxy"

    move-object/from16 p3, v13

    const/4 v13, 0x0

    invoke-virtual {v14, v15, v13}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_4

    const-string/jumbo v13, "SemCscFeature"

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v13, 0x102023f

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_3

    const/16 v13, 0x8

    invoke-virtual {v14, v13}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const v13, 0x1020584

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_4

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    move-object v13, v12

    move-object/from16 v12, p3

    goto :goto_2

    :cond_5
    const v13, 0x1090054

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    goto :goto_1

    :goto_2
    const v14, 0x1020241

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    new-instance v15, Landroid/util/ArraySet;

    const/4 v6, 0x3

    invoke-direct {v15, v6}, Landroid/util/ArraySet;-><init>(I)V

    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getType()I

    move-result v6

    iput v6, v1, Lcom/android/server/autofill/ui/SaveUi;->mType:I

    and-int/lit8 v16, v6, 0x1

    if-eqz v16, :cond_6

    const v4, 0x1040229

    invoke-virtual {v11, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_6
    and-int/lit8 v4, v6, 0x2

    if-eqz v4, :cond_7

    const v4, 0x1040224

    invoke-virtual {v11, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_7
    and-int/lit8 v4, v6, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    move/from16 v16, v9

    const/4 v9, 0x1

    if-gt v4, v9, :cond_b

    and-int/lit16 v4, v6, 0x80

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_8
    and-int/lit8 v4, v6, 0x40

    if-eqz v4, :cond_9

    const v4, 0x104022a

    invoke-virtual {v11, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    and-int/lit8 v4, v6, 0x4

    if-eqz v4, :cond_a

    const v4, 0x1040225

    invoke-virtual {v11, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    and-int/lit8 v4, v6, 0x20

    if-eqz v4, :cond_c

    const v4, 0x1040226

    invoke-virtual {v11, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    :goto_3
    const v4, 0x1040228

    invoke-virtual {v11, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_4
    and-int/lit8 v4, v6, 0x8

    if-eqz v4, :cond_d

    const v4, 0x104022b

    invoke-virtual {v11, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_d
    and-int/lit8 v4, v6, 0x10

    if-eqz v4, :cond_e

    const v4, 0x1040227

    invoke-virtual {v11, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v4

    move/from16 v17, v6

    const/4 v6, 0x2

    if-eq v4, v9, :cond_14

    if-eq v4, v6, :cond_12

    const/4 v6, 0x3

    if-eq v4, v6, :cond_10

    if-eqz p12, :cond_f

    const v4, 0x104022f

    goto :goto_5

    :cond_f
    const v4, 0x1040220

    :goto_5
    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v11, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    goto :goto_9

    :cond_10
    const/4 v6, 0x0

    if-eqz p12, :cond_11

    const v4, 0x1040231

    goto :goto_6

    :cond_11
    const v4, 0x1040222

    :goto_6
    invoke-virtual {v15, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v15, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v9, 0x2

    invoke-virtual {v15, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    filled-new-array {v5, v6, v15, v12}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    goto :goto_9

    :cond_12
    const/4 v6, 0x0

    if-eqz p12, :cond_13

    const v4, 0x1040230

    goto :goto_7

    :cond_13
    const v4, 0x1040221

    :goto_7
    invoke-virtual {v15, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    const/4 v9, 0x1

    invoke-virtual {v15, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    filled-new-array {v5, v15, v12}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    goto :goto_9

    :cond_14
    const/4 v6, 0x0

    if-eqz p12, :cond_15

    const v4, 0x1040232

    goto :goto_8

    :cond_15
    const v4, 0x1040223

    :goto_8
    invoke-virtual {v15, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    filled-new-array {v5, v12}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    :goto_9
    iget-object v4, v1, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getNegativeActionStyle()I

    move-result v4

    const/16 v5, 0x3e7

    if-eq v4, v5, :cond_16

    const v4, 0x102023f

    invoke-virtual {v13, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-object/from16 v5, p4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_16
    const-string/jumbo v4, "applyCustomDescription(): view = "

    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getCustomDescription()Landroid/service/autofill/CustomDescription;

    move-result-object v5

    const/16 v6, 0x46a

    if-nez v5, :cond_17

    goto/16 :goto_15

    :cond_17
    iget v0, v0, Lcom/android/server/autofill/ui/PendingUi;->sessionId:I

    const/16 v15, 0x469

    invoke-static {v15, v3, v2, v0, v7}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    invoke-virtual {v5}, Landroid/service/autofill/CustomDescription;->getPresentation()Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    if-nez v0, :cond_18

    const-string/jumbo v0, "No remote view on custom description"

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    :cond_18
    invoke-virtual {v5}, Landroid/service/autofill/CustomDescription;->getTransformations()Ljava/util/ArrayList;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_19

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "applyCustomDescription(): transformations = "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    move-object/from16 v3, p8

    if-eqz v2, :cond_1a

    invoke-static {v3, v0, v2}, Landroid/service/autofill/InternalTransformation;->batchApply(Landroid/service/autofill/ValueFinder;Landroid/widget/RemoteViews;Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string/jumbo v0, "could not apply main transformations on custom description"

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    :cond_1a
    new-instance v2, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/autofill/ui/SaveUi;)V

    move/from16 v7, v16

    const/4 v15, 0x0

    :try_start_0
    invoke-virtual {v0, v11, v15, v2, v7}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v5}, Landroid/service/autofill/CustomDescription;->getUpdates()Ljava/util/ArrayList;

    move-result-object v7

    sget-boolean v8, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v8, :cond_1b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " updates="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    goto/16 :goto_14

    :cond_1b
    :goto_a
    const-string/jumbo v4, "custom description has "

    if-eqz v7, :cond_24

    :try_start_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    sget-boolean v15, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v15, :cond_1c

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " batch updates"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const/4 v6, 0x0

    :goto_b
    if-ge v6, v8, :cond_24

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    iget-object v9, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Landroid/service/autofill/InternalValidator;

    if-eqz v9, :cond_1d

    invoke-virtual {v9, v3}, Landroid/service/autofill/InternalValidator;->isValid(Landroid/service/autofill/ValueFinder;)Z

    move-result v9

    if-nez v9, :cond_1e

    :cond_1d
    move-object/from16 v17, v5

    goto/16 :goto_e

    :cond_1e
    iget-object v9, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Landroid/service/autofill/BatchUpdates;

    invoke-virtual {v9}, Landroid/service/autofill/BatchUpdates;->getUpdates()Landroid/widget/RemoteViews;

    move-result-object v15

    invoke-static {v15}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v15

    if-eqz v15, :cond_20

    sget-boolean v16, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v16, :cond_1f

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v5

    const-string v5, "Applying template updates for batch update #"

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_1f
    move-object/from16 v17, v5

    :goto_c
    invoke-virtual {v15, v11, v2}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_d

    :cond_20
    move-object/from16 v17, v5

    :goto_d
    invoke-virtual {v9}, Landroid/service/autofill/BatchUpdates;->getTransformations()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_23

    sget-boolean v9, Lcom/android/server/autofill/Helper;->sDebug:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v14, ": "

    if-eqz v9, :cond_21

    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Applying child transformation for batch update #"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    invoke-static {v3, v0, v5}, Landroid/service/autofill/InternalTransformation;->batchApply(Landroid/service/autofill/ValueFinder;Landroid/widget/RemoteViews;Ljava/util/ArrayList;)Z

    move-result v9

    if-nez v9, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not apply child transformation for batch update #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    :cond_22
    invoke-virtual {v0, v11, v2}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_f

    :goto_e
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v5, :cond_23

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Skipping batch update #"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    :goto_f
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v5, v17

    goto/16 :goto_b

    :cond_24
    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Landroid/service/autofill/CustomDescription;->getActions()Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    sget-boolean v5, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v5, :cond_25

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " actions"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    instance-of v4, v2, Landroid/view/ViewGroup;

    if-nez v4, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cannot apply actions because custom description root is not a ViewGroup: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_26
    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    const/4 v5, 0x0

    :goto_10
    if-ge v5, v3, :cond_28

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/autofill/InternalOnClickAction;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_27

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring action "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " for view "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " because it\'s not on "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_27
    new-instance v6, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda7;

    const/4 v9, 0x0

    invoke-direct {v6, v9, v7, v4}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_28
    :goto_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda8;

    invoke-direct {v3, v0}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda8;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v3, :cond_29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {v5}, Lcom/android/server/autofill/ui/SaveUi;->applyMovementMethodIfNeed(Landroid/widget/TextView;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_29
    const v3, 0x102023e

    invoke-virtual {v13, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/16 v2, 0x1f4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setScrollBarDefaultDelayBeforeFade(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v15, 0x0

    iput-object v15, v1, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_2b

    const-string/jumbo v0, "on constructor: applied custom description"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :goto_14
    const-string v2, "Error applying custom description. "

    invoke-static {v10, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_15
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2a

    iget-object v2, v1, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v3, v1, Lcom/android/server/autofill/ui/SaveUi;->mComponentName:Landroid/content/ComponentName;

    iget-object v4, v1, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    iget v4, v4, Lcom/android/server/autofill/ui/PendingUi;->sessionId:I

    iget-boolean v5, v1, Lcom/android/server/autofill/ui/SaveUi;->mCompatMode:Z

    iget-object v6, v1, Lcom/android/server/autofill/ui/SaveUi;->mServicePackageName:Ljava/lang/String;

    const/16 v7, 0x46b

    invoke-static {v7, v3, v6, v4, v5}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v3

    iget v4, v1, Lcom/android/server/autofill/ui/SaveUi;->mType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x46a

    invoke-virtual {v3, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    const v3, 0x102023e

    invoke-virtual {v13, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Lcom/android/server/autofill/ui/SaveUi;->applyMovementMethodIfNeed(Landroid/widget/TextView;)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setScrollBarDefaultDelayBeforeFade(I)V

    :cond_2a
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_2b

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "on constructor: title="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", subTitle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    :goto_16
    const v0, 0x1020240

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getNegativeActionStyle()I

    move-result v2

    const v3, 0x1020242

    invoke-virtual {v13, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getPositiveActionStyle()I

    move-result v4

    const/4 v9, 0x1

    if-ne v4, v9, :cond_2c

    const v4, 0x1040214

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_17

    :cond_2c
    if-eqz p12, :cond_2d

    const v4, 0x1040233

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_2d
    :goto_17
    new-instance v4, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getNegativeActionStyle()I

    move-result v4

    const/16 v5, 0x3e7

    if-ne v4, v5, :cond_2e

    new-instance v2, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    move-object/from16 v5, p7

    invoke-direct {v2, v1, v5, v4}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/SaveUi;Landroid/service/autofill/SaveInfo;I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x1020583

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x1040216

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v12, Ljava/lang/String;

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/android/server/autofill/ui/SaveUi$2;

    move/from16 v6, p12

    invoke-direct {v4, v1, v3, v5, v6}, Lcom/android/server/autofill/ui/SaveUi$2;-><init>(Lcom/android/server/autofill/ui/SaveUi;Landroid/widget/TextView;Landroid/service/autofill/SaveInfo;Z)V

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_19

    :cond_2e
    move-object/from16 v5, p7

    const/4 v9, 0x1

    if-eq v2, v9, :cond_30

    const/4 v9, 0x2

    if-eq v2, v9, :cond_2f

    const v2, 0x104021e

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_18

    :cond_2f
    const v2, 0x104021c

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_18

    :cond_30
    const v2, 0x104021f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_18
    new-instance v2, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda1;

    const/4 v4, 0x1

    invoke-direct {v2, v1, v5, v4}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/SaveUi;Landroid/service/autofill/SaveInfo;I)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_19
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v11}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x11200b3

    const/4 v9, 0x1

    invoke-virtual {v4, v5, v2, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v4, v2, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_33

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "show_button_background"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v9, :cond_31

    move v14, v9

    goto :goto_1a

    :cond_31
    move v14, v6

    :goto_1a
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v11}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1010031

    invoke-virtual {v5, v6, v4, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    if-lez v2, :cond_32

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v14, v2}, Landroid/widget/TextView;->semSetButtonShapeEnabled(ZI)V

    invoke-virtual {v3, v14, v2}, Landroid/widget/TextView;->semSetButtonShapeEnabled(ZI)V

    goto :goto_1b

    :cond_32
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    :cond_33
    :goto_1b
    new-instance v0, Landroid/app/Dialog;

    iget v2, v1, Lcom/android/server/autofill/ui/SaveUi;->mThemeId:I

    invoke-direct {v0, v11, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v13}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    new-instance v2, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/autofill/ui/SaveUi;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x7f6

    invoke-virtual {v0, v2}, Landroid/view/Window;->setType(I)V

    const v2, 0x20002

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v2}, Landroid/view/Window;->setDimAmount(F)V

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/view/Window;->addPrivateFlags(I)V

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    const/16 v2, 0x51

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v2, 0x104021a

    invoke-virtual {v11, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    const v2, 0x1030330

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    const v0, 0x1020245

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const v2, 0x1020244

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    if-eqz v3, :cond_34

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda4;

    invoke-direct {v4, v1, v0, v2}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/autofill/ui/SaveUi;Landroid/widget/ScrollView;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda5;

    invoke-direct {v4, v1, v0, v2}, Lcom/android/server/autofill/ui/SaveUi$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/autofill/ui/SaveUi;Landroid/widget/ScrollView;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_34
    invoke-virtual {v1}, Lcom/android/server/autofill/ui/SaveUi;->show()V

    return-void
.end method

.method public static applyMovementMethodIfNeed(Landroid/widget/TextView;)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v2, Landroid/text/style/ClickableSpan;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method


# virtual methods
.method public final hide()Lcom/android/server/autofill/ui/PendingUi;
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SaveUi"

    const-string v2, "Hiding save dialog."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->hide()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/OverlayControl;->setOverlayAllowed(Z)V

    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/OverlayControl;->setOverlayAllowed(Z)V

    throw p0
.end method

.method public final show()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Showing save dialog: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SaveUi"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/ui/OverlayControl;->setOverlayAllowed(Z)V

    return-void
.end method

.method public final startIntentSenderWithRestore(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 7

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string/jumbo v1, "SaveUi"

    if-eqz v0, :cond_0

    const-string v0, "Intercepting custom description intent"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    iget-object v2, v0, Lcom/android/server/autofill/ui/PendingUi;->mToken:Landroid/os/IBinder;

    const-string/jumbo v3, "android.view.autofill.extra.RESTORE_SESSION_TOKEN"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    sget-boolean v4, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "OneTimeListener.startIntentSender(): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v3, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mDone:Z

    const-string/jumbo v6, "SaveUi"

    invoke-static {v6, v4, v5}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_1
    iget-boolean v4, v3, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mDone:Z

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, v3, Lcom/android/server/autofill/ui/SaveUi$OneActionThenDestroyListener;->mRealListener:Lcom/android/server/autofill/ui/AutoFillUI$1;

    iget-object v3, v3, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$callback:Lcom/android/server/autofill/Session;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/autofill/Session;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    :goto_0
    const/4 p1, 0x2

    iput p1, v0, Lcom/android/server/autofill/ui/PendingUi;->mState:I

    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "hiding UI until restored with token "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/SaveUi;->hide()Lcom/android/server/autofill/ui/PendingUi;

    iget-object p1, p0, Lcom/android/server/autofill/ui/SaveUi;->mComponentName:Landroid/content/ComponentName;

    iget p2, v0, Lcom/android/server/autofill/ui/PendingUi;->sessionId:I

    iget-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mCompatMode:Z

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mServicePackageName:Ljava/lang/String;

    const/16 v2, 0x46c

    invoke-static {v2, p1, v1, p2, v0}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object p1

    iget p2, p0, Lcom/android/server/autofill/ui/SaveUi;->mType:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 v0, 0x46a

    invoke-virtual {p1, v0, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    if-nez p0, :cond_0

    const-string/jumbo p0, "NO TITLE"

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
