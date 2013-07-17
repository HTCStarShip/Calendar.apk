.class public Lcom/htc/calendar/QueryExchangeLogin;
.super Ljava/lang/Thread;
.source "QueryExchangeLogin.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QueryExchangeLogin"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/htc/calendar/QueryExchangeLogin;->mContext:Landroid/content/Context;

    .line 13
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 17
    :try_start_0
    const-string v1, "QueryExchangeLogin"

    const-string v2, "QueryExchangeLogin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 19
    iget-object v1, p0, Lcom/htc/calendar/QueryExchangeLogin;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/calendar/Utils;->queryExchangeLogin(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    return-void

    .line 20
    :catch_0
    move-exception v0

    .line 21
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "QueryExchangeLogin"

    const-string v2, "QueryExchangeLogin() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
