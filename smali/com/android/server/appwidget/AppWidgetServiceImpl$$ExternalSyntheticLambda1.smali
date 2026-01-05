.class public final synthetic Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

.field public final synthetic f$1:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    iput-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iput p3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda1;->f$2:I

    invoke-virtual {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->loadGeneratedPreviews(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)Landroid/util/SparseArray;

    move-result-object v2

    sget-object v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->WIDGET_CATEGORY_FLAGS:[I

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    const/4 v7, 0x3

    const/4 v8, 0x1

    if-ge v5, v7, :cond_2

    aget v7, v3, v5

    and-int v9, p0, v7

    if-eqz v9, :cond_1

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    move v8, v4

    :goto_1
    or-int/2addr v6, v8

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGeneratedPreviews(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Landroid/util/SparseArray;Z)V

    :cond_3
    return-void
.end method
