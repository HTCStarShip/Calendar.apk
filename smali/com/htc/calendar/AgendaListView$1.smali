.class Lcom/htc/calendar/AgendaListView$1;
.super Ljava/lang/Object;
.source "AgendaListView.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/AgendaListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/AgendaListView;


# direct methods
.method constructor <init>(Lcom/htc/calendar/AgendaListView;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/htc/calendar/AgendaListView$1;->this$0:Lcom/htc/calendar/AgendaListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private returnUri(Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 160
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$1;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/AgendaListView;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$100(Lcom/htc/calendar/AgendaListView;)Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/htc/calendar/AgendaActivity;

    if-eqz v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$1;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/widget/HtcListViewEx;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$200(Lcom/htc/calendar/AgendaListView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/util/calendar/HtcCalendarManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/calendar/HtcCalendarManager;

    move-result-object v2

    iget-wide v3, p1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->id:J

    invoke-virtual {v2, v3, v4}, Lcom/htc/util/calendar/HtcCalendarManager;->generateTheEventUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 162
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$1;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/AgendaListView;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$100(Lcom/htc/calendar/AgendaListView;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 163
    .local v0, parentIntent:Landroid/content/Intent;
    if-nez v1, :cond_1

    .line 164
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$1;->this$0:Lcom/htc/calendar/AgendaListView;

    const-string v3, "pick event: none"

    #calls: Lcom/htc/calendar/AgendaListView;->debug(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/calendar/AgendaListView;->access$300(Lcom/htc/calendar/AgendaListView;Ljava/lang/String;)V

    .line 165
    const-string v2, "event_uri"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    :goto_0
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$1;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/AgendaListView;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$100(Lcom/htc/calendar/AgendaListView;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 174
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$1;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/AgendaListView;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$100(Lcom/htc/calendar/AgendaListView;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 176
    .end local v0           #parentIntent:Landroid/content/Intent;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    return-void

    .line 167
    .restart local v0       #parentIntent:Landroid/content/Intent;
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_1
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$1;->this$0:Lcom/htc/calendar/AgendaListView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pick event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/calendar/AgendaListView;->debug(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/calendar/AgendaListView;->access$300(Lcom/htc/calendar/AgendaListView;Ljava/lang/String;)V

    .line 168
    const-string v2, "event_uri"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v2, "event_title"

    iget-object v3, p1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private returnVCalendar(Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 138
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$1;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/widget/HtcListViewEx;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$000(Lcom/htc/calendar/AgendaListView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/util/calendar/HtcCalendarManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/calendar/HtcCalendarManager;

    move-result-object v2

    iget-wide v3, p1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->id:J

    invoke-virtual {v2, v3, v4}, Lcom/htc/util/calendar/HtcCalendarManager;->buildVCalendar(J)Lcom/htc/util/calendar/vcalendar/HtcVCalendar;

    move-result-object v1

    .line 140
    .local v1, vcal:Lcom/htc/util/calendar/vcalendar/HtcVCalendar;
    if-nez v1, :cond_1

    .line 141
    const-string v2, "AgendaListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get vCalendar error!!, event.id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$1;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/AgendaListView;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$100(Lcom/htc/calendar/AgendaListView;)Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/htc/calendar/AgendaActivity;

    if-eqz v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$1;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/AgendaListView;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$100(Lcom/htc/calendar/AgendaListView;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 147
    .local v0, parentIntent:Landroid/content/Intent;
    const-string v2, "event_id"

    iget-wide v3, p1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->id:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 148
    const-string v2, "vcalendar"

    invoke-virtual {v1}, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v2, "title"

    invoke-virtual {v1}, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v2, "beginTime"

    iget-wide v3, p1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 151
    const-string v2, "endTime"

    iget-wide v3, p1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->end:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 152
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$1;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/AgendaListView;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$100(Lcom/htc/calendar/AgendaListView;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 153
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$1;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/AgendaListView;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$100(Lcom/htc/calendar/AgendaListView;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const-wide/16 v5, -0x1

    const/4 v4, 0x3

    .line 180
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$1;->this$0:Lcom/htc/calendar/AgendaListView;

    #setter for: Lcom/htc/calendar/AgendaListView;->mSelectedPosition:I
    invoke-static {v2, p3}, Lcom/htc/calendar/AgendaListView;->access$402(Lcom/htc/calendar/AgendaListView;I)I

    .line 181
    cmp-long v2, p4, v5

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$1;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/AgendaListView;->mMode:I
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$500(Lcom/htc/calendar/AgendaListView;)I

    move-result v2

    if-nez v2, :cond_1

    .line 183
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$1;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/AgendaListView;->mWindowAdapter:Lcom/htc/calendar/AgendaWindowAdapter;
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$600(Lcom/htc/calendar/AgendaListView;)Lcom/htc/calendar/AgendaWindowAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/htc/calendar/AgendaWindowAdapter;->getEventByPosition(I)Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v1

    .line 184
    .local v1, event:Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;
    if-eqz v1, :cond_0

    .line 192
    :try_start_0
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$1;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/widget/HtcListViewEx;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$700(Lcom/htc/calendar/AgendaListView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/htc/calendar/HtcUtils;->StartActvity(Landroid/content/Context;Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v1           #event:Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;
    :cond_0
    :goto_0
    return-void

    .line 195
    .restart local v1       #event:Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;
    :catch_0
    move-exception v0

    .line 196
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AgendaListView"

    const-string v3, "launch facebook event card error:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 199
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #event:Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;
    :cond_1
    cmp-long v2, p4, v5

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$1;->this$0:Lcom/htc/calendar/AgendaListView;

    #calls: Lcom/htc/calendar/AgendaListView;->isPickMode()Z
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$800(Lcom/htc/calendar/AgendaListView;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 200
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$1;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/AgendaListView;->mWindowAdapter:Lcom/htc/calendar/AgendaWindowAdapter;
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$600(Lcom/htc/calendar/AgendaListView;)Lcom/htc/calendar/AgendaWindowAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/htc/calendar/AgendaWindowAdapter;->getEventByPosition(I)Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v1

    .line 201
    .restart local v1       #event:Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;
    if-eqz v1, :cond_0

    .line 202
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$1;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/AgendaListView;->mMode:I
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$500(Lcom/htc/calendar/AgendaListView;)I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 203
    invoke-direct {p0, v1}, Lcom/htc/calendar/AgendaListView$1;->returnVCalendar(Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;)V

    goto :goto_0

    .line 204
    :cond_2
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$1;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/AgendaListView;->mMode:I
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$500(Lcom/htc/calendar/AgendaListView;)I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$1;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/AgendaListView;->mMode:I
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$500(Lcom/htc/calendar/AgendaListView;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 206
    :cond_3
    invoke-direct {p0, v1}, Lcom/htc/calendar/AgendaListView$1;->returnUri(Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;)V

    goto :goto_0

    .line 208
    :cond_4
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$1;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/AgendaListView;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$100(Lcom/htc/calendar/AgendaListView;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 211
    .end local v1           #event:Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;
    :cond_5
    cmp-long v2, p4, v5

    if-nez v2, :cond_0

    .line 212
    if-nez p3, :cond_7

    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$1;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/AgendaListView;->mMode:I
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$500(Lcom/htc/calendar/AgendaListView;)I

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$1;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/AgendaListView;->mMode:I
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$500(Lcom/htc/calendar/AgendaListView;)I

    move-result v2

    if-ne v2, v4, :cond_7

    .line 214
    :cond_6
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$1;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/AgendaListView;->mWindowAdapter:Lcom/htc/calendar/AgendaWindowAdapter;
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$600(Lcom/htc/calendar/AgendaListView;)Lcom/htc/calendar/AgendaWindowAdapter;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/calendar/AgendaWindowAdapter;->lookMore(I)V

    goto :goto_0

    .line 215
    :cond_7
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$1;->this$0:Lcom/htc/calendar/AgendaListView;

    invoke-virtual {v2}, Lcom/htc/calendar/AgendaListView;->getFooterViewsCount()I

    move-result v2

    if-lez v2, :cond_9

    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$1;->this$0:Lcom/htc/calendar/AgendaListView;

    invoke-virtual {v2}, Lcom/htc/calendar/AgendaListView;->getFooterViewsCount()I

    move-result v2

    iget-object v3, p0, Lcom/htc/calendar/AgendaListView$1;->this$0:Lcom/htc/calendar/AgendaListView;

    invoke-virtual {v3}, Lcom/htc/calendar/AgendaListView;->getCount()I

    move-result v3

    sub-int/2addr v3, p3

    if-lt v2, v3, :cond_9

    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$1;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/AgendaListView;->mMode:I
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$500(Lcom/htc/calendar/AgendaListView;)I

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$1;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/AgendaListView;->mMode:I
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$500(Lcom/htc/calendar/AgendaListView;)I

    move-result v2

    if-ne v2, v4, :cond_9

    .line 218
    :cond_8
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$1;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/AgendaListView;->mWindowAdapter:Lcom/htc/calendar/AgendaWindowAdapter;
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$600(Lcom/htc/calendar/AgendaListView;)Lcom/htc/calendar/AgendaWindowAdapter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/calendar/AgendaWindowAdapter;->lookMore(I)V

    goto/16 :goto_0

    .line 220
    :cond_9
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$1;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/AgendaListView;->mWindowAdapter:Lcom/htc/calendar/AgendaWindowAdapter;
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$600(Lcom/htc/calendar/AgendaListView;)Lcom/htc/calendar/AgendaWindowAdapter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/htc/calendar/AgendaWindowAdapter;->onClickHeaderFooter(Landroid/view/View;)V

    goto/16 :goto_0
.end method
