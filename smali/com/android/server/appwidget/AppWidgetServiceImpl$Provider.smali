.class public final Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final WIDGET_CATEGORY_FLAGS:[I


# instance fields
.field public broadcast:Landroid/app/PendingIntent;

.field public id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

.field public info:Landroid/appwidget/AppWidgetProviderInfo;

.field public infoTag:Ljava/lang/String;

.field public mInfoParsed:Z

.field public maskedByLockedProfile:Z

.field public maskedByQuietProfile:Z

.field public maskedByStoppedPackage:Z

.field public maskedBySuperLocked:Z

.field public maskedBySuspendedPackage:Z

.field public final pendingDeletedWidgetIds:Landroid/util/IntArray;

.field public tag:I

.field public final templatePreviews:Landroid/util/SparseArray;

.field public final templateSizes:[I

.field public final templateStyles:[I

.field public final widgets:Ljava/util/ArrayList;

.field public zombie:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x4

    const/4 v2, 0x1

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->WIDGET_CATEGORY_FLAGS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->templatePreviews:Landroid/util/SparseArray;

    sget-object v0, Lcom/android/server/appwidget/AppWidgetServiceImpl;->APPWIDGET_WIDGET_SUPPORTED_SIZES:[I

    array-length v1, v0

    const/4 v2, 0x1

    shl-int v1, v2, v1

    array-length v2, v0

    const/4 v3, 0x2

    shl-int v2, v3, v2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->templateStyles:[I

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->templateSizes:[I

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->pendingDeletedWidgetIds:Landroid/util/IntArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->mInfoParsed:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    return-void
.end method


# virtual methods
.method public final getInfoLocked(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->mInfoParsed:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->infoTag:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseAppWidgetProviderInfo(Landroid/content/Context;Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    const-string/jumbo v2, "android.appwidget.provider"

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->parseAppWidgetProviderInfo(Landroid/content/Context;Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->generatedPreviewCategories:I

    iput p1, v0, Landroid/appwidget/AppWidgetProviderInfo;->generatedPreviewCategories:I

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    sget-boolean p1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->mInfoParsed:Z

    :cond_3
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    return-object p0
.end method

.method public final getTemplatePreviewLocked(II)Landroid/os/Bundle;
    .locals 10

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->templatePreviews:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object p0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->templatePreviews:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v2, v1, [I

    new-array v3, v1, [Landroid/widget/RemoteViews;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v1, :cond_2

    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->templatePreviews:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->templateSizes:[I

    array-length v7, v7

    shr-int v8, v6, v7

    const/4 v9, 0x1

    shl-int v7, v9, v7

    sub-int/2addr v7, v9

    and-int/2addr v7, v6

    and-int/2addr v8, p2

    if-eqz v8, :cond_1

    and-int/2addr v7, p1

    if-eqz v7, :cond_1

    aput v6, v2, v5

    add-int/lit8 v6, v5, 0x1

    iget-object v7, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->templatePreviews:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/RemoteViews;

    aput-object v7, v3, v5

    move v5, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo p0, "previewStates"

    invoke-virtual {v0, p0, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string/jumbo p0, "previewRemoteViews"

    invoke-virtual {v0, p0, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public final getUserId()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    return p0
.end method

.method public final hostedByPackageForUser(ILjava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v3

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final isInPackageForUser(ILjava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isMaskedLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByQuietProfile:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByLockedProfile:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedBySuspendedPackage:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByStoppedPackage:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedBySuperLocked:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final setPartialInfoLocked(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    sget-boolean p1, Lcom/android/server/appwidget/AppWidgetServiceImpl;->DEBUG:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->mInfoParsed:Z

    return-void
.end method

.method public final setTemplatePreviewLocked(II[Landroid/widget/RemoteViews;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    array-length v4, v3

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v4, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->templateSizes:[I

    array-length v5, v4

    iget-object v6, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->templateStyles:[I

    array-length v7, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v9, v7, :cond_3

    aget v11, v6, v9

    shl-int v12, v2, v5

    and-int/2addr v12, v11

    if-eqz v12, :cond_2

    array-length v12, v4

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_2

    aget v14, v4, v13

    and-int v15, v1, v14

    if-eqz v15, :cond_1

    iget-object v15, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->templatePreviews:Landroid/util/SparseArray;

    or-int/2addr v14, v11

    aget-object v8, v3, v10

    invoke-virtual {v15, v14, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    array-length v8, v3

    if-lt v10, v8, :cond_1

    const-string v3, "All preview data has been used for preview state / preview size : "

    const-string v4, " / "

    const-string v5, ", "

    invoke-static {v10, v1, v3, v4, v5}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetServiceImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->updateTemplatePreviewCategoriesLocked()V

    return-void

    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->updateTemplatePreviewCategoriesLocked()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Provider{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-eqz p0, :cond_0

    const-string p0, " Z"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateTemplatePreviewCategoriesLocked()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->templateSizes:[I

    array-length v0, v0

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    add-int/lit8 v2, v1, -0x1

    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    const/4 v4, 0x0

    iput v4, v3, Landroid/appwidget/AppWidgetProviderInfo;->hidden_semGeneratedColorfulPreviewStates:I

    iput v4, v3, Landroid/appwidget/AppWidgetProviderInfo;->hidden_semGeneratedMonotonePreviewStates:I

    :goto_0
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->templatePreviews:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v4, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->templatePreviews:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    and-int v5, v3, v2

    and-int v6, v3, v1

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v7, v6, Landroid/appwidget/AppWidgetProviderInfo;->hidden_semGeneratedColorfulPreviewStates:I

    or-int/2addr v7, v5

    iput v7, v6, Landroid/appwidget/AppWidgetProviderInfo;->hidden_semGeneratedColorfulPreviewStates:I

    :cond_0
    const/4 v6, 0x2

    shl-int/2addr v6, v0

    and-int/2addr v3, v6

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v6, v3, Landroid/appwidget/AppWidgetProviderInfo;->hidden_semGeneratedMonotonePreviewStates:I

    or-int/2addr v5, v6

    iput v5, v3, Landroid/appwidget/AppWidgetProviderInfo;->hidden_semGeneratedMonotonePreviewStates:I

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateTemplatePreviewCategoriesLocked "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->hidden_semGeneratedColorfulPreviewStates:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->hidden_semGeneratedMonotonePreviewStates:I

    const-string v1, "AppWidgetServiceImpl"

    invoke-static {v0, p0, v1}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method
