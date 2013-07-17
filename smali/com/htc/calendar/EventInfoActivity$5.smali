.class Lcom/htc/calendar/EventInfoActivity$5;
.super Ljava/lang/Object;
.source "EventInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EventInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/EventInfoActivity;


# direct methods
.method constructor <init>(Lcom/htc/calendar/EventInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1855
    iput-object p1, p0, Lcom/htc/calendar/EventInfoActivity$5;->this$0:Lcom/htc/calendar/EventInfoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 1857
    const-string v3, "EventInfoActivity"

    const-string v4, "mClickAttendeesStatusListener"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    :try_start_0
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/calendar/EventInfoActivity$5;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mEventId:J
    invoke-static {v4}, Lcom/htc/calendar/EventInfoActivity;->access$1000(Lcom/htc/calendar/EventInfoActivity;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1860
    .local v2, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1861
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/htc/calendar/EventInfoActivity$5;->this$0:Lcom/htc/calendar/EventInfoActivity;

    const-class v4, Lcom/htc/calendar/AttendeesStatus2;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1862
    const-string v3, "beginTime"

    iget-object v4, p0, Lcom/htc/calendar/EventInfoActivity$5;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mStartMillis:J
    invoke-static {v4}, Lcom/htc/calendar/EventInfoActivity;->access$1100(Lcom/htc/calendar/EventInfoActivity;)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1863
    const-string v3, "endTime"

    iget-object v4, p0, Lcom/htc/calendar/EventInfoActivity$5;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mEndMillis:J
    invoke-static {v4}, Lcom/htc/calendar/EventInfoActivity;->access$1200(Lcom/htc/calendar/EventInfoActivity;)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1864
    const-string v3, "IsOrganizer"

    iget-object v4, p0, Lcom/htc/calendar/EventInfoActivity$5;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mIsOrganizer:Z
    invoke-static {v4}, Lcom/htc/calendar/EventInfoActivity;->access$1300(Lcom/htc/calendar/EventInfoActivity;)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1865
    iget-object v3, p0, Lcom/htc/calendar/EventInfoActivity$5;->this$0:Lcom/htc/calendar/EventInfoActivity;

    invoke-virtual {v3, v1}, Lcom/htc/calendar/EventInfoActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1869
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 1866
    :catch_0
    move-exception v0

    .line 1867
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
