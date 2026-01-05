.class public final synthetic Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

.field public final synthetic f$1:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILandroid/widget/RemoteViews;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    iput-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iput p3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILcom/android/internal/infra/AndroidFuture;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    iput-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iput p3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda0;->f$2:I

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->loadGeneratedPreviews(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    and-int/2addr v3, v2

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda0;->f$2:I

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    check-cast p0, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->loadGeneratedPreviews(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)Landroid/util/SparseArray;

    move-result-object v3

    sget-object v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->WIDGET_CATEGORY_FLAGS:[I

    const/4 v5, 0x0

    :goto_2
    const/4 v6, 0x3

    if-ge v5, v6, :cond_3

    aget v6, v4, v5

    and-int v7, v2, v6

    if-eqz v7, :cond_2

    invoke-virtual {v3, v6, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    const/4 p0, 0x1

    invoke-virtual {v0, v1, v3, p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGeneratedPreviews(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Landroid/util/SparseArray;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
