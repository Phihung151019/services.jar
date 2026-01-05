.class public final synthetic Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/CountryDetectorService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/CountryDetectorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/CountryDetectorService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/CountryDetectorService;

    sget v0, Lcom/android/server/CountryDetectorService;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/server/CountryDetectorService;->initialize()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    return-void
.end method
