.class public final synthetic Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/location/CountryListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/CountryDetectorService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/CountryDetectorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/CountryDetectorService;

    return-void
.end method


# virtual methods
.method public final onCountryDetected(Landroid/location/Country;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/CountryDetectorService;

    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/CountryDetectorService;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
