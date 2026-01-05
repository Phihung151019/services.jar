.class public final synthetic Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroid/credentials/selection/ProviderData;

    check-cast p1, Landroid/credentials/selection/GetCredentialProviderData;

    return-object p1

    :pswitch_0
    check-cast p1, Landroid/credentials/selection/ProviderData;

    check-cast p1, Landroid/credentials/selection/GetCredentialProviderData;

    return-object p1

    :pswitch_1
    check-cast p1, Lcom/android/server/credentials/ProviderGetSession;

    iget-object p0, p1, Lcom/android/server/credentials/ProviderGetSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;

    iget-object p0, p0, Lcom/android/server/credentials/ProviderGetSession$ProviderResponseDataHandler;->mCredentialEntryTypes:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lcom/android/server/credentials/ProviderSession;

    check-cast p1, Lcom/android/server/credentials/ProviderGetSession;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
