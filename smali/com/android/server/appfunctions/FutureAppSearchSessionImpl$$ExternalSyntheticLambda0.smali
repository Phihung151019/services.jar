.class public final synthetic Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    iput-object p2, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    iget-object p0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/app/appsearch/GetByDocumentIdRequest;

    check-cast p1, Landroid/app/appsearch/AppSearchSession;

    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    iget-object v0, v0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;

    invoke-direct {v2, v1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {p1, p0, v0, v2}, Landroid/app/appsearch/AppSearchSession;->getByDocumentId(Landroid/app/appsearch/GetByDocumentIdRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    return-object v1

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    iget-object p0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/app/appsearch/RemoveByDocumentIdRequest;

    check-cast p1, Landroid/app/appsearch/AppSearchSession;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    iget-object v0, v0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;

    invoke-direct {v2, v1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$BatchResultCallbackAdapter;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {p1, p0, v0, v2}, Landroid/app/appsearch/AppSearchSession;->remove(Landroid/app/appsearch/RemoveByDocumentIdRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    return-object v1

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    iget-object p0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/app/appsearch/PutDocumentsRequest;

    check-cast p1, Landroid/app/appsearch/AppSearchSession;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    iget-object v0, v0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda9;

    invoke-direct {v2, v1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {p1, p0, v0, v2}, Landroid/app/appsearch/AppSearchSession;->put(Landroid/app/appsearch/PutDocumentsRequest;Ljava/util/concurrent/Executor;Landroid/app/appsearch/BatchResultCallback;)V

    return-object v1

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;

    iget-object p0, p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/app/appsearch/SetSchemaRequest;

    check-cast p1, Landroid/app/appsearch/AppSearchSession;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    iget-object v0, v0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda7;

    invoke-direct {v2, v1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-virtual {p1, p0, v0, v0, v2}, Landroid/app/appsearch/AppSearchSession;->setSchema(Landroid/app/appsearch/SetSchemaRequest;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    new-instance p0, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda8;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/appfunctions/FutureAppSearchSessionImpl$$ExternalSyntheticLambda8;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/android/internal/infra/AndroidFuture;->thenApply(Ljava/util/function/Function;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
