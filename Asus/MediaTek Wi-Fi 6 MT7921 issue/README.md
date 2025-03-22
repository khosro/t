

# Problem

I have `MediaTek Wi-Fi 6 MT7921 Wireless LAN Card` as a Wireless device and during my work, Wireless randomly disconnect and disappear. 

And i must restart and sometimes do it twice to solve.

## Errors in Event Viewer

The following appeared in `Event Viewer` respectively 

```
<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<Events>
	<Event xmlns='http://schemas.microsoft.com/win/2004/08/events/event'>
		<System>
			<Provider Name='mtkwlex'/>
			<EventID Qualifiers='49152'>5002</EventID>
			<Version>0</Version>
			<Level>2</Level>
			<Task>0</Task>
			<Opcode>0</Opcode>
			<Keywords>0x80000000000000</Keywords>
			<TimeCreated SystemTime='2025-03-19T19:37:32.1807200Z'/>
			<EventRecordID>24167</EventRecordID>
			<Correlation/>
			<Execution ProcessID='4' ThreadID='164'/>
			<Channel>System</Channel>
			<Security/>
		</System>
		<EventData>
			<Data>\Device\NDMP1</Data>
			<Data>MediaTek Wi-Fi 6 MT7921 Wireless LAN Card</Data>
			<Binary>0000080002003800000000008A1300C00000000000000000000000000000000000000000000000000400000000000000</Binary>
		</EventData>
		<RenderingInfo Culture='en-US'>
			<Message>MediaTek Wi-Fi 6 MT7921 Wireless LAN Card : Has determined that the network adapter is not functioning properly.</Message>
			<Level>Error</Level>
			<Task>None</Task>
			<Keywords>
				<Keyword>Classic</Keyword>
			</Keywords>
		</RenderingInfo>
	</Event>
</Events>
```


```
<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<Events>
	<Event xmlns='http://schemas.microsoft.com/win/2004/08/events/event'>
		<System>
			<Provider Name='Microsoft-Windows-NDIS' Guid='{cdead503-17f5-4a3e-b7ae-df8cc2902eb9}'/>
			<EventID>10317</EventID>
			<Version>0</Version>
			<Level>2</Level>
			<Task>2</Task>
			<Opcode>0</Opcode>
			<Keywords>0x2000000000004016</Keywords>
			<TimeCreated SystemTime='2025-03-19T19:37:32.1815202Z'/>
			<EventRecordID>24168</EventRecordID>
			<Correlation ActivityID='{a788889b-cad4-45a0-9162-8f63a74d6f58}'/>
			<Execution ProcessID='4' ThreadID='276'/>
			<Channel>System</Channel>
		</System>
		<EventData>
			<Data Name='IfGuid'>{a788889b-cad4-45a0-9162-8f63a74d6f58}</Data>
			<Data Name='IfIndex'>13</Data>
			<Data Name='IfLuid'>19985273102270464</Data>
			<Data Name='AdapterName'>MediaTek Wi-Fi 6 MT7921 Wireless LAN Card</Data>
			<Data Name='MiniportEventEnum'>71</Data>
		</EventData>
		<RenderingInfo Culture='en-US'>
			<Message>Miniport MediaTek Wi-Fi 6 MT7921 Wireless LAN Card, {a788889b-cad4-45a0-9162-8f63a74d6f58}, had event Fatal error: The miniport has detected an internal error</Message>
			<Level>Error</Level>
			<Task>PnP</Task>
			<Opcode>Info</Opcode>
			<Channel>System</Channel>
			<Provider>Microsoft-Windows-NDIS</Provider>
		</RenderingInfo>
	</Event>
</Events>
```



```
<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<Events>
	<Event xmlns='http://schemas.microsoft.com/win/2004/08/events/event'>
		<System>
			<Provider Name='Microsoft-Windows-WLAN-AutoConfig' Guid='{9580d7dd-0379-4658-9870-d5be7d52d6de}'/>
			<EventID>10002</EventID>
			<Version>0</Version>
			<Level>3</Level>
			<Task>0</Task>
			<Opcode>0</Opcode>
			<Keywords>0x4000000000000000</Keywords>
			<TimeCreated SystemTime='2025-03-19T19:37:32.2813938Z'/>
			<EventRecordID>24169</EventRecordID>
			<Correlation/>
			<Execution ProcessID='4188' ThreadID='4904'/>
			<Channel>System</Channel>
		</System>
		<EventData>
			<Data Name='ExtensibleModulePath'>C:\WINDOWS\system32\mtkihvx.dll</Data>
		</EventData>
		<RenderingInfo Culture='en-US'>
			<Message>WLAN Extensibility Module has stopped.&#13;&#10;&#13;&#10;Module Path: C:\WINDOWS\system32\mtkihvx.dll&#13;&#10;</Message>
			<Level>Warning</Level>
			<Opcode>Info</Opcode>
			<Channel>System</Channel>
			<Provider>Microsoft-Windows-WLAN-AutoConfig</Provider>
		</RenderingInfo>
	</Event>
</Events>
```

#### In rare cases, the following occurred and Wireless come back

```
<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<Events>
	<Event xmlns='http://schemas.microsoft.com/win/2004/08/events/event'>
		<System>
			<Provider Name='Microsoft-Windows-WLAN-AutoConfig' Guid='{9580d7dd-0379-4658-9870-d5be7d52d6de}'/>
			<EventID>10001</EventID>
			<Version>0</Version>
			<Level>4</Level>
			<Task>0</Task>
			<Opcode>0</Opcode>
			<Keywords>0x4000000000000000</Keywords>
			<TimeCreated SystemTime='2025-03-20T06:12:50.6736441Z'/>
			<EventRecordID>24264</EventRecordID>
			<Correlation/>
			<Execution ProcessID='4188' ThreadID='4904'/>
			<Channel>System</Channel>
		</System>
		<EventData>
			<Data Name='ExtensibleModulePath'>C:\WINDOWS\system32\mtkihvx.dll</Data>
		</EventData>
		<RenderingInfo Culture='en-US'>
			<Message>WLAN Extensibility Module has successfully started.&#13;&#10;&#13;&#10;Module Path: C:\WINDOWS\system32\mtkihvx.dll&#13;&#10;</Message>
			<Level>Information</Level>
			<Opcode>Info</Opcode>
			<Channel>System</Channel>
			<Provider>Microsoft-Windows-WLAN-AutoConfig</Provider>
		</RenderingInfo>
	</Event>
</Events>

```

## What i applied and still testing ...

 1. At `2025-03-21`, for `Win 11 24H2`, i apply `MediaTek, Inc. - Net - 3.0.1.1334` from ["MediaTek Wi-Fi 6 MT7921 Wireless LAN Card 24h2" from Microsoft Update Catalog](https://www.catalog.update.microsoft.com/Search.aspx?q=MediaTek%20Wi-Fi%206%20MT7921%20Wireless%20LAN%20Card%2024h2)
	by [What Are Windows CAB Files and How Do You Install Them? (Section `How to Install Driver Updates From a CAB File`)](https://www.makeuseof.com/windows-cab-files-guide/)
	

	I have not test it : For `Win 11 22H2` maybe you can use ["MediaTek Wi-Fi 6 MT7921 Wireless LAN Card 22h2" from Microsoft Update Catalog](https://www.catalog.update.microsoft.com/Search.aspx?q=MediaTek%20Wi-Fi%206%20MT7921%20Wireless%20LAN%20Card%2022h2)
	

 2. Step that i have found it
	
	2.1. I google [mediatek wifi has determined network adapter not functioning properly mtkwlex](https://www.google.com/search?q=mediatek+wifi+has+determined+network+adapter+not+functioning+properly+mtkwlex&oq=mediatek+wifi+has+determined+network+adapter+not+functioning+properly+mtkwlex&sourceid=chrome&ie=UTF-8)
	
	  For local copy : [mediatek wifi has determined network adapter not functioning properly mtkwlex](./mediatek%20wifi%20has%20determined%20network%20adapter%20not%20functioning%20properly%20mtkwlex%20-%20Page%201%20(GoogleSearch).txt)
	

	2.2. I have found 4th search result as [Issue with MediaTek Wi-Fi 6 MT7921 Wireless LAN Card on Asus TUF F15 FX506HM](https://rog-forum.asus.com/t5/tuf-asus-gaming-notebooks/issue-with-mediatek-wi-fi-6-mt7921-wireless-lan-card-on-asus-tuf/td-p/989491)
	
	2.3. In [Yoblipa repond](https://rog-forum.asus.com/t5/tuf-asus-gaming-notebooks/issue-with-mediatek-wi-fi-6-mt7921-wireless-lan-card-on-asus-tuf/m-p/1014026/highlight/true#M4463)
	     i change search from [`MediaTek Wi-Fi 6 MT7921 Wireless LAN Card 22h2`](https://www.catalog.update.microsoft.com/Search.aspx?q=MediaTek%20Wi-Fi%206%20MT7921%20Wireless%20LAN%20Card%2022h2) to [`MediaTek Wi-Fi 6 MT7921 Wireless LAN Card 24h2`](https://www.catalog.update.microsoft.com/Search.aspx?q=MediaTek%20Wi-Fi%206%20MT7921%20Wireless%20LAN%20Card%2024h2)

       It is important that for version `MediaTek, Inc. - Net - 3.0.1.1334` they are refer to the same `CAB file` for `22H2` and `24H2`.

### Copilot did not help

I have also use `Microsoft Copilot`, but it does not help me !!! [MediaTek Wi-Fi 6 MT7921 Wireless LAN-Copilot](./MediaTek%20Wi-Fi%206%20MT7921%20Wireless%20LAN-Copilot.md) . It suggests me the old driver version (`24.34.2.571` released at `2024-10-24 or 24 Oct 2024`) and it is not the same as my version installed in my computer (my installed version was `3.0.1.1325`) and the lasted version from `Microsoft Update Catalog` is `3.0.1.1334` released at `2024-12-08` and `Microsoft Update Catalog` is newer.

