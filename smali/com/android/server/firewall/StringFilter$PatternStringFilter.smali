.class public final Lcom/android/server/firewall/StringFilter$PatternStringFilter;
.super Lcom/android/server/firewall/StringFilter;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mPattern:Landroid/os/PatternMatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/firewall/StringFilter$1;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/firewall/StringFilter;-><init>(Lcom/android/server/firewall/StringFilter$1;)V

    new-instance p1, Landroid/os/PatternMatcher;

    const/4 v0, 0x2

    invoke-direct {p1, p2, v0}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/server/firewall/StringFilter$PatternStringFilter;->mPattern:Landroid/os/PatternMatcher;

    return-void
.end method


# virtual methods
.method public final matchesValue(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/firewall/StringFilter$PatternStringFilter;->mPattern:Landroid/os/PatternMatcher;

    invoke-virtual {p0, p1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
