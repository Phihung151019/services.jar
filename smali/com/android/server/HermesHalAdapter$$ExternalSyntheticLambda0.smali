.class public final synthetic Lcom/android/server/HermesHalAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/weaver/V1_0/IWeaver$readCallback;


# instance fields
.field public final synthetic f$0:[I


# direct methods
.method public synthetic constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/HermesHalAdapter$$ExternalSyntheticLambda0;->f$0:[I

    return-void
.end method


# virtual methods
.method public final onValues(ILandroid/hardware/weaver/V1_0/WeaverReadResponse;)V
    .locals 0

    sget-object p1, Lcom/android/server/HermesHalAdapter;->HERMES_AIDL_INTERFACE:Ljava/lang/String;

    iget p1, p2, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    iget-object p0, p0, Lcom/android/server/HermesHalAdapter$$ExternalSyntheticLambda0;->f$0:[I

    const/4 p2, 0x0

    aput p1, p0, p2

    return-void
.end method
