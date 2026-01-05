.class public final synthetic Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DatabaseSizeContentObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DatabaseSizeContentObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DatabaseSizeContentObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DatabaseSizeContentObserver$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DatabaseSizeContentObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DatabaseSizeContentObserver$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DatabaseSizeContentObserver;

    sget v0, Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DatabaseSizeContentObserver;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/service/DatabaseObserver$DatabaseSizeContentObserver;->lambda$onChange$0()V

    return-void
.end method
