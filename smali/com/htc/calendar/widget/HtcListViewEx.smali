.class public Lcom/htc/calendar/widget/HtcListViewEx;
.super Lcom/htc/widget/HtcListView;
.source "HtcListViewEx.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcListViewEx"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object p1, p0, Lcom/htc/calendar/widget/HtcListViewEx;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput-object p1, p0, Lcom/htc/calendar/widget/HtcListViewEx;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    iput-object p1, p0, Lcom/htc/calendar/widget/HtcListViewEx;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method protected fillDown(II)Landroid/view/View;
    .locals 6
    .parameter "pos"
    .parameter "nextTop"

    .prologue
    .line 32
    const/4 v3, 0x0

    .line 34
    .local v3, v:Landroid/view/View;
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcListView;->fillDown(II)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 42
    :goto_0
    return-object v3

    .line 35
    :catch_0
    move-exception v1

    .line 36
    .local v1, iobe:Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "HtcListViewEx"

    const-string v5, "IndexOutOfBounds"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 37
    .end local v1           #iobe:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v2

    .line 38
    .local v2, npe:Ljava/lang/NullPointerException;
    const-string v4, "HtcListViewEx"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 39
    .end local v2           #npe:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 40
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "HtcListViewEx"

    const-string v5, "Exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected fillUp(II)Landroid/view/View;
    .locals 6
    .parameter "pos"
    .parameter "nextBottom"

    .prologue
    .line 47
    const/4 v3, 0x0

    .line 49
    .local v3, v:Landroid/view/View;
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcListView;->fillUp(II)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 57
    :goto_0
    return-object v3

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, iobe:Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "HtcListViewEx"

    const-string v5, "IndexOutOfBounds"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 52
    .end local v1           #iobe:Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v2

    .line 53
    .local v2, npe:Ljava/lang/NullPointerException;
    const-string v4, "HtcListViewEx"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 54
    .end local v2           #npe:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 55
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "HtcListViewEx"

    const-string v5, "Exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
