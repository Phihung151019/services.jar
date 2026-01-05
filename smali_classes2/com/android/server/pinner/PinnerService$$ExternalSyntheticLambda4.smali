.class public final synthetic Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/pinner/PinnerService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/android/server/pinner/PinnedFile;

    sget v0, Lcom/android/server/pinner/PinnerService;->PAGE_SIZE:I

    iget-object p1, p1, Lcom/android/server/pinner/PinnedFile;->groupName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
