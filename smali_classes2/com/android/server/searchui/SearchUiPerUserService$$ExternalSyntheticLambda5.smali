.class public final synthetic Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic f$0:Landroid/app/search/SearchSessionId;


# direct methods
.method public synthetic constructor <init>(Landroid/app/search/SearchSessionId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda5;->f$0:Landroid/app/search/SearchSessionId;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/searchui/SearchUiPerUserService$$ExternalSyntheticLambda5;->f$0:Landroid/app/search/SearchSessionId;

    check-cast p1, Landroid/service/search/ISearchUiService;

    invoke-interface {p1, p0}, Landroid/service/search/ISearchUiService;->onDestroy(Landroid/app/search/SearchSessionId;)V

    return-void
.end method
