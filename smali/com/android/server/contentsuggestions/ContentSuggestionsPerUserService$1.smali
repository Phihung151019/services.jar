.class public final Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;


# direct methods
.method public constructor <init>(Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService$1;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;

    return-void
.end method


# virtual methods
.method public final onServiceDied(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    const-string p1, "ContentSuggestionsPerUserService"

    const-string/jumbo v0, "remote content suggestions service died"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService$1;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;

    iget-object p1, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mRemoteService:Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;->destroy()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->mRemoteService:Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    :cond_0
    return-void
.end method
