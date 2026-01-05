.class public final synthetic Lcom/android/server/ResourcePressureUtil$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/io/StringWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/StringWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ResourcePressureUtil$$ExternalSyntheticLambda1;->f$0:Ljava/io/StringWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/ResourcePressureUtil$$ExternalSyntheticLambda1;->f$0:Ljava/io/StringWriter;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    return-void
.end method
