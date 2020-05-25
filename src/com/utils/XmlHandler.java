package com.utils;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

import java.util.HashMap;

public class XmlHandler extends DefaultHandler {

    private StringBuffer stringBuffer = new StringBuffer();
    private HashMap<String, String> hashMap = new HashMap<String, String>();

    //获取并返回hashmap
    public HashMap<String, String> getHashMap() {
        return hashMap;
    }

    //初始化的操作
    @Override
    public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
        stringBuffer.delete(0, stringBuffer.length());//清空操作
    }

    //在元素结束时，将文本内容存入hashmap
    @Override
    public void endElement(String uri, String localName, String qName) throws SAXException {
        hashMap.put(qName.toLowerCase(), stringBuffer.toString().trim());
    }

    //将稳步内容读取到字符串变量
    @Override
    public void characters(char[] ch, int start, int length) throws SAXException {
        stringBuffer.append(ch, start, length);
    }

}
