.class public final Lcom/android/server/autofill/ui/DialogFillUi;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

.field public mAnnounceFilterResult:Lcom/android/server/autofill/ui/DialogFillUi$AnnounceFilterResult;

.field public final mCallback:Lcom/android/server/autofill/ui/AutoFillUI$3;

.field public final mComponentName:Landroid/content/ComponentName;

.field public final mContext:Landroid/content/Context;

.field public mDestroyed:Z

.field public final mDialog:Landroid/app/Dialog;

.field public final mFilterText:Ljava/lang/String;

.field public final mListView:Landroid/widget/ListView;

.field public final mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

.field public final mServicePackageName:Ljava/lang/String;

.field public final mThemeId:I

.field public final mUserContext:Landroid/content/Context;

.field public final mVisibleDatasetsMaxCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/ComponentName;Lcom/android/server/autofill/ui/OverlayControl;ZLcom/android/server/autofill/ui/AutoFillUI$3;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v0, p5

    move/from16 v3, p9

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v5, "DialogFillUi"

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "nightMode: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v3, :cond_1

    const v3, 0x103043c

    goto :goto_0

    :cond_1
    const v3, 0x103044a

    :goto_0
    iput v3, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mThemeId:I

    move-object/from16 v4, p10

    iput-object v4, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$3;

    move-object/from16 v6, p8

    iput-object v6, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    move-object/from16 v6, p6

    iput-object v6, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mServicePackageName:Ljava/lang/String;

    move-object/from16 v6, p7

    iput-object v6, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mComponentName:Landroid/content/ComponentName;

    new-instance v6, Landroid/view/ContextThemeWrapper;

    move-object/from16 v7, p1

    invoke-direct {v6, v7, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v6, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/autofill/Helper;->getUserContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mUserContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x1090053

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getShowFillDialogIcon()Z

    move-result v9

    const/4 v11, 0x0

    if-eqz v9, :cond_4

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const v9, 0x1020243

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v12

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v13

    sget-boolean v14, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v14, :cond_3

    const-string v14, "Adding service icon ("

    const-string/jumbo v15, "x"

    const-string v10, ")"

    invoke-static {v12, v13, v14, v15, v10}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDialogHeader()Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    const v9, 0x1020237

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    new-instance v10, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda5;

    const/4 v12, 0x2

    invoke-direct {v10, v1, v12}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;I)V

    move-object v12, v8

    check-cast v12, Landroid/view/ViewGroup;

    invoke-virtual {v0, v7, v12, v10, v3}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_2
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getVisibleDatasetsMaxCount()I

    move-result v0

    if-lez v0, :cond_6

    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getVisibleDatasetsMaxCount()I

    move-result v0

    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "overriding maximum visible datasets to "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10e0009

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :cond_7
    :goto_3
    iput v0, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mVisibleDatasetsMaxCount:I

    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v3

    const-string v7, "Error inflating remote views"

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    iput-object v3, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    move-object/from16 v9, p2

    :try_start_0
    invoke-virtual {v1, v8, v9}, Lcom/android/server/autofill/ui/DialogFillUi;->initialAuthenticationLayout(Landroid/view/View;Landroid/service/autofill/FillResponse;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_c

    :catch_0
    move-exception v0

    invoke-virtual {v4}, Lcom/android/server/autofill/ui/AutoFillUI$3;->onCanceled()V

    invoke-static {v5, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-object v3, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mDialog:Landroid/app/Dialog;

    return-void

    :cond_8
    move-object/from16 v9, p2

    invoke-virtual {v9}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Number datasets: "

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " max visible: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    new-instance v4, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda5;

    const/4 v0, 0x1

    invoke-direct {v4, v1, v0}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;I)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v12, v11

    :goto_4
    if-ge v12, v3, :cond_11

    invoke-virtual {v9}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/Dataset;

    invoke-virtual {v0}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    if-ltz v13, :cond_10

    invoke-virtual {v0, v13}, Landroid/service/autofill/Dataset;->getFieldDialogPresentation(I)Landroid/widget/RemoteViews;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v14

    if-nez v14, :cond_a

    sget-boolean v13, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v13, :cond_10

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "not displaying UI on field "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " because service didn\'t provide a presentation for it on "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_a
    :try_start_1
    sget-boolean v15, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v15, :cond_b

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setting remote view for "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_1
    move-exception v0

    goto/16 :goto_9

    :cond_b
    :goto_5
    iget-object v6, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mUserContext:Landroid/content/Context;

    iget v15, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mThemeId:I

    const/4 v11, 0x0

    invoke-virtual {v14, v6, v11, v4, v15}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v0, v13}, Landroid/service/autofill/Dataset;->getFilter(I)Landroid/service/autofill/Dataset$DatasetFieldFilter;

    move-result-object v11

    if-nez v11, :cond_d

    invoke-virtual {v0}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/autofill/AutofillValue;

    if-eqz v11, :cond_c

    invoke-virtual {v11}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-virtual {v11}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    :cond_c
    const/4 v11, 0x0

    :goto_6
    move-object v13, v11

    const/4 v11, 0x0

    :goto_7
    const/4 v14, 0x1

    goto :goto_8

    :cond_d
    iget-object v11, v11, Landroid/service/autofill/Dataset$DatasetFieldFilter;->pattern:Ljava/util/regex/Pattern;

    if-nez v11, :cond_f

    sget-boolean v14, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v14, :cond_e

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Explicitly disabling filter at id "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " for dataset #"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/4 v13, 0x0

    const/4 v14, 0x0

    goto :goto_8

    :cond_f
    const/4 v13, 0x0

    goto :goto_7

    :goto_8
    new-instance v15, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;

    move-object/from16 p6, v0

    move-object/from16 p10, v6

    move-object/from16 p7, v11

    move-object/from16 p9, v13

    move/from16 p8, v14

    move-object/from16 p5, v15

    invoke-direct/range {p5 .. p10}, Lcom/android/server/autofill/ui/DialogFillUi$ViewItem;-><init>(Landroid/service/autofill/Dataset;Ljava/util/regex/Pattern;ZLjava/lang/String;Landroid/view/View;)V

    move-object/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :goto_9
    invoke-static {v5, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_10
    :goto_a
    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x0

    goto/16 :goto_4

    :cond_11
    new-instance v0, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    invoke-direct {v0, v1, v10}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;Ljava/util/List;)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    const v2, 0x1020238

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mListView:Landroid/widget/ListView;

    new-instance v3, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;)V

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->getCount()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_12

    new-instance v2, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda3;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    const v3, 0x102023b

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x1040214

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_12
    if-nez p4, :cond_13

    const/4 v11, 0x0

    iput-object v11, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mFilterText:Ljava/lang/String;

    goto :goto_b

    :cond_13
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mFilterText:Ljava/lang/String;

    :goto_b
    invoke-virtual {v0}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->getCount()I

    move-result v2

    new-instance v3, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;

    invoke-direct {v3, v0}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter$1;-><init>(Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;)V

    iget-object v0, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mFilterText:Ljava/lang/String;

    new-instance v4, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda4;

    invoke-direct {v4, v1, v2}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;I)V

    invoke-virtual {v3, v0, v4}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    :goto_c
    const v0, 0x1020239

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x104021e

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance v2, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda3;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/app/Dialog;

    iget-object v2, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    iget v3, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mThemeId:I

    invoke-direct {v0, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7f6

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    const v3, 0x20002

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    const v3, 0x3f19999a    # 0.6f

    invoke-virtual {v2, v3}, Landroid/view/Window;->setDimAmount(F)V

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/view/Window;->addPrivateFlags(I)V

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    const/16 v3, 0x51

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x105006b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v2, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mContext:Landroid/content/Context;

    const v4, 0x1040217

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    const v2, 0x1030330

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    new-instance v2, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v2, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mAdapter:Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/android/server/autofill/ui/DialogFillUi$ItemsAdapter;->getCount()I

    move-result v4

    goto :goto_d

    :cond_14
    const/4 v4, 0x0

    :goto_d
    new-instance v2, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, v4}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;I)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    const-string/jumbo v2, "Showing fill dialog"

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, v1, Lcom/android/server/autofill/ui/DialogFillUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/server/autofill/ui/OverlayControl;->setOverlayAllowed(Z)V

    return-void
.end method


# virtual methods
.method public final initialAuthenticationLayout(Landroid/view/View;Landroid/service/autofill/FillResponse;)V
    .locals 6

    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getDialogPresentation()Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getPresentation()Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const v1, 0x1020236

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda5;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;I)V

    iget-object v3, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mUserContext:Landroid/content/Context;

    move-object v4, p1

    check-cast v4, Landroid/view/ViewGroup;

    iget v5, p0, Lcom/android/server/autofill/ui/DialogFillUi;->mThemeId:I

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    new-instance v2, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda6;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;Landroid/service/autofill/FillResponse;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda6;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p2, v2}, Lcom/android/server/autofill/ui/DialogFillUi$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/autofill/ui/DialogFillUi;Landroid/service/autofill/FillResponse;I)V

    const p0, 0x102023b

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const p1, 0x1040214

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "No presentation for fill dialog authentication"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "NO TITLE"

    return-object p0
.end method
